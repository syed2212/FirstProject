#!/usr/bin/env bash

brew tap wix/brew
brew update
brew install applesimutils

# Change ios.sim.release to the detox configuration you want to run

echo "Building the project for Detox tests..."
npx detox build -c android.emu.debug

echo "Executing Detox tests..."
npx detox test --configuration android.emu.debug --cleanup