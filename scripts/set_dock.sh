 #!/usr/bin/env bash
cp ./com.apple.dock.plist ~/Library/Preferences/com.apple.dock.plist
defaults read ~/Library/Preferences/com.apple.dock.plist
killall Dock