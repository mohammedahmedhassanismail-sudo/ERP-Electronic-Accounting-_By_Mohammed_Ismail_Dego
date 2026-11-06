#!/data/data/com.termux/files/usr/bin/bash
# By.Mohammed.Ismail.Dego ERP - Android Offline Localhost Launcher (127.0.0.1:8080)
PORT=8080
DIR="$(cd "$(dirname "$0")" && pwd)"
am start -a android.intent.action.VIEW -d "http://127.0.0.1:$PORT/index.html" >/dev/null 2>&1 &
python3 -m http.server $PORT --bind 127.0.0.1 --directory "$DIR"