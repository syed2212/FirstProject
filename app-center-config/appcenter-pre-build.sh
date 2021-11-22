#!/usr/bin/env bash
npm install

# Change ios.sim.release to the detox configuration you want to run

echo "Building the project for Detox tests..."
npx detox build -c android.emu.debug

echo "Executing Detox tests..."
npx detox test --configuration ios.sim.release --cleanup