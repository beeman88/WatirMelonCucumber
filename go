#! /usr/bin/env bash
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
rvm rvmrc trust
cd .
set -e
gem install bundler --no-rdoc --no-ri
bundle install
bundle update selenium-webdriver
cucumber
