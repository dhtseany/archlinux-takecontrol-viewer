#!/usr/bin/env bash
TODAY=$(date +%Y-%m-%d_%H_%M_%S)
WINEDEBUG=warn+all exec /usr/bin/wine $HOME//.wine//drive_c//users//$USER///Local\ Settings//Application\ Data//Take\ Control\ Viewer//TakeControlRDLdr.exe -- $1 &> $HOME/.wine/drive_c/users/$USER/Local\ Settings/Application\ Data/Take\ Control\ Viewer/takecontrolviewer_$TODAY.log
