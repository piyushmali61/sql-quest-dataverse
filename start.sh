#!/bin/bash
# SSBT Ignite - SQL Quest Launcher (macOS / Linux)

echo "============================================================="
echo "      SSBT IGNITE — SQL QUEST: LOST IN THE DATAVERSE"
echo "              Game Launcher (macOS / Linux)"
echo "============================================================="
echo ""

if command -v node >/dev/null 2>&1; then
    node server.js
elif command -v python3 >/dev/null 2>&1; then
    echo "  [+] Launching with Python 3 on port 3000..."
    if command -v open >/dev/null 2>&1; then
        open http://localhost:3000 &
    elif command -v xdg-open >/dev/null 2>&1; then
        xdg-open http://localhost:3000 &
    fi
    python3 -m http.server 3000
else
    echo "  [!] Node.js or Python 3 is required to run the local server."
    echo "      Install Node.js from https://nodejs.org"
fi
