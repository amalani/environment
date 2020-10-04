# Show battery life percentage
defaults write com.apple.menuextra.battery ShowPercent -string YES

# Setup system menubar icons
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/Volume.menu""/System/Library/CoreServices/Menu Extras/Battery.menu" 
# "/System/Library/CoreServices/Menu Extras/Clock.menu"
# "/System/Library/CoreServices/Menu Extras/AirPort.menu" 

killall SystemUIServer