#!/bin/sh

# brew
brew update
if [ -e "brew/Brewfile" ]; then
    brew bundle --file=brew/Brewfile
fi

# Install gems
if [ -e "Gemfile" ]; then
    bundle install
fi

# Mint
if [ -e "Mintfile" ]; then
    mint bootstrap
fi

# ArkanaKeys
if [ -e ".env" ]; then
    bundle exec arkana
fi

# Podfile
if [ -e "Podfile" ]; then
    bundle exec pod install
fi

# add pre-commit & commit-msg hooks
GIT_HOOKS_DIRECTORY=.git/hooks

if [ ! -d $GIT_HOOKS_DIRECTORY ]; then
    mkdir $GIT_HOOKS_DIRECTORY
    echo "hooks dir created"
fi

# copy pre-commit hook
cp scripts/hooks/pre-commit ${GIT_HOOKS_DIRECTORY}/pre-commit
chmod u+x ${GIT_HOOKS_DIRECTORY}/pre-commit
echo "pre-commit hook added"

# copy commit-msg hook
cp scripts/hooks/commit-msg ${GIT_HOOKS_DIRECTORY}/commit-msg
chmod u+x ${GIT_HOOKS_DIRECTORY}/commit-msg
echo "commit-msg hook added"

# add commit message template
git config commit.template "$PWD/scripts/hooks/commit-msg-template"
echo "commit message template added"
