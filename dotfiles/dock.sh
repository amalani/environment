add_to_dock() {
  defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>'$1'</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
}

add_spacer() {
  defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'  
}

# Remove all apps from the dock
defaults write com.apple.dock persistent-apps -array ""

# Animation
defaults write com.apple.dock expose-animation-duration -float 0.2
defaults write com.apple.dock autohide-time-modifier -float 0.1

# Add Chrome to dock
# defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Google Chrome.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

# Add apps
# add_to_dock '/System/Library/CoreServices/Finder.app'
add_to_dock '/Applications/Google Chrome.app'
add_to_dock '/Applications/Slack.app'
add_to_dock '/Applications/iTerm.app'
add_to_dock '/Applications/Microsoft OneNote.app'
add_spacer
add_to_dock '/Applications/GitHub Desktop.app'
add_to_dock '/Applications/PyCharm.app'
add_to_dock '/Applications/Visual Studio Code.app'
add_spacer
add_to_dock '/Applications/Mailspring.app'
add_to_dock '/Applications/Microsoft To Do.app'
add_to_dock '/Applications/Reeder.app'
add_to_dock '/Applications/Notion.app'
add_to_dock '/Applications/WhatsApp.app'
add_to_dock '/Applications/Telegram.app'
add_spacer

# Add a few blank spaces 
# defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
# add_spacer

killall Dock