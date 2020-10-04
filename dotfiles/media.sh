

# Clear VLC recents
defaults delete org.videolan.vlc.LSSharedFileList RecentDocuments

# Disable recents in VLC
defaults write org.videolan.vlc NSRecentDocumentsLimit 0
defaults write org.videolan.vlc.LSSharedFileList RecentDocuments -dict-add MaxAmount 0

# Quicktime
defaults delete com.apple.QuickTimePlayerX.LSSharedFileList RecentDocuments
defaults write com.apple.QuickTimePlayerX NSRecentDocumentsLimit 0
defaults write com.apple.QuickTimePlayerX.LSSharedFileList RecentDocuments -dict-add MaxAmount 0

# Undo clear
# # VLC 
# defaults delete org.videolan.vlc NSRecentDocumentsLimit
# defaults delete org.videolan.vlc.LSSharedFileList RecentDocuments
# # For QuickTime Player X (`com.apple.QuickTimePlayerX`), it would be:
# defaults delete com.apple.QuickTimePlayerX NSRecentDocumentsLimit
# defaults delete com.apple.QuickTimePlayerX.LSSharedFileList RecentDocuments