#!/bin/bash
# Install Tax Skills for Claude Code
# Usage: ./install.sh

set -e

SKILLS_DIR="${HOME}/.claude/skills"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Tax Skills for Claude Code..."
echo ""

# Create skills directory if it doesn't exist
mkdir -p "$SKILLS_DIR"

# Copy each skill
for skill in tax tax-bookkeeping tax-optimize tax-prep tax-audit-risk; do
    if [ -d "$SCRIPT_DIR/skills/$skill" ]; then
        cp -r "$SCRIPT_DIR/skills/$skill" "$SKILLS_DIR/"
        echo "  Installed: $skill"
    else
        echo "  Warning: $skill not found in skills/"
    fi
done

echo ""
echo "Done! Installed 5 skills with $(find "$SKILLS_DIR"/tax* -name '*.md' -type f | wc -l | tr -d ' ') reference files."
echo ""
echo "Restart Claude Code to activate the skills."
echo ""
echo "Quick test:"
echo '  > /tax'
echo '  > /tax optimize'
echo '  > /tax audit-risk'
