#!/bin/bash
# SSBT Ignite - SQL Quest Setup (macOS / Linux)

echo "============================================================="
echo "      SSBT IGNITE — SQL QUEST: LOST IN THE DATAVERSE"
echo "            Setup Script (macOS / Linux)"
echo "============================================================="
echo ""

chmod +x start.sh 2>/dev/null

if command -v node >/dev/null 2>&1; then
    NODE_VER=$(node -v)
    echo "  [OK] Node.js is installed ($NODE_VER)."
    echo "  [SUCCESS] Ready to play! Run ./start.sh to begin."
elif command -v python3 >/dev/null 2>&1; then
    PY_VER=$(python3 --version)
    echo "  [OK] Python 3 is installed ($PY_VER)."
    echo "  [SUCCESS] Ready to play! Run ./start.sh to begin."
else
    echo "  [!] Node.js or Python 3 is required."
    echo "      Please install Node.js from https://nodejs.org"
fi
echo ""
