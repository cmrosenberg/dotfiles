#!/usr/bin/env bash
#Based on Mathias Bynens' setup:
#https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

#  Finder: Always show things in list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true
