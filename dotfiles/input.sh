
# Always show scrolbar
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Keyboard repeat delay
defaults write NSGlobalDomain InitialKeyRepeat -int 25
defaults write NSGlobalDomain KeyRepeat -int 1

# Expand save/print CFD by default 
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
