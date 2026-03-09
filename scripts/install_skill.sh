#!/usr/bin/env bash
set -euo pipefail

MODE="symlink"
FORCE="0"
TARGET_CLAUDE="0"
TARGET_CODEX="0"
declare -a CUSTOM_SKILLS_DIRS=()

print_help() {
  cat <<'EOF'
Install this repo as a local CLI skill.

Usage:
  ./scripts/install_skill.sh [--claude] [--codex] [--skills-dir PATH] [--copy] [--force]

Targets:
  --claude           Install to Claude Code (~/.claude/skills).
  --codex            Install to Codex (~/.codex/skills).
  --skills-dir PATH  Install to a custom skills directory (repeatable).

If no target is provided, the script installs to both Claude Code and Codex.

Options:
  --copy   Copy the repo into the skills directory instead of symlinking it.
  --force  Replace an existing installed skill at the target path.
  -h, --help  Show this help message.
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --copy)
      MODE="copy"
      shift
      ;;
    --force)
      FORCE="1"
      shift
      ;;
    --claude)
      TARGET_CLAUDE="1"
      shift
      ;;
    --codex)
      TARGET_CODEX="1"
      shift
      ;;
    --skills-dir)
      if [[ $# -lt 2 ]]; then
        echo "Missing value for --skills-dir" >&2
        exit 1
      fi
      CUSTOM_SKILLS_DIRS+=("$2")
      shift 2
      ;;
    -h|--help)
      print_help
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      echo "Use --help to see supported options." >&2
      exit 1
      ;;
  esac
done

if [[ "$TARGET_CLAUDE" == "0" && "$TARGET_CODEX" == "0" && "${#CUSTOM_SKILLS_DIRS[@]}" -eq 0 ]]; then
  TARGET_CLAUDE="1"
  TARGET_CODEX="1"
fi

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_NAME="advisor-research"
CLAUDE_HOME_DIR="${CLAUDE_HOME:-$HOME/.claude}"
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"

if [[ ! -f "$REPO_ROOT/SKILL.md" ]]; then
  echo "Missing $REPO_ROOT/SKILL.md" >&2
  exit 1
fi

if [[ "$TARGET_CODEX" == "1" && ! -f "$REPO_ROOT/agents/openai.yaml" ]]; then
  echo "Missing $REPO_ROOT/agents/openai.yaml (required for Codex metadata)" >&2
  exit 1
fi

install_to_skills_root() {
  local skills_root="$1"
  local label="$2"
  local target_dir="$skills_root/$SKILL_NAME"

  mkdir -p "$skills_root"

  if [[ -e "$target_dir" || -L "$target_dir" ]]; then
    if [[ "$FORCE" != "1" ]]; then
      echo "Target already exists for $label: $target_dir" >&2
      echo "Re-run with --force to replace it." >&2
      exit 1
    fi
    rm -rf "$target_dir"
  fi

  if [[ "$MODE" == "copy" ]]; then
    cp -R "$REPO_ROOT" "$target_dir"
    echo "Copied skill to $target_dir ($label)"
  else
    ln -s "$REPO_ROOT" "$target_dir"
    echo "Symlinked skill to $target_dir ($label)"
  fi
}

if [[ "$TARGET_CLAUDE" == "1" ]]; then
  install_to_skills_root "$CLAUDE_HOME_DIR/skills" "Claude Code"
fi

if [[ "$TARGET_CODEX" == "1" ]]; then
  install_to_skills_root "$CODEX_HOME_DIR/skills" "Codex"
fi

if [[ ${#CUSTOM_SKILLS_DIRS[@]} -gt 0 ]]; then
  for custom_dir in "${CUSTOM_SKILLS_DIRS[@]}"; do
    expanded_dir="${custom_dir/#\~/$HOME}"
    install_to_skills_root "$expanded_dir" "Custom"
  done
fi

echo "Done. Restart your CLI or refresh its skill list to load $SKILL_NAME."
