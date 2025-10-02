#!/bin/bash

# --------------------------------------
# Enhanced test.sh for Jenkins builds
# Author: bajitodkar
# --------------------------------------

echo "====================================="
echo "✅ Running test.sh from GitHub repo"
echo "====================================="

# Print current date and time
echo "📅 Date       : $(date)"
echo "💻 Hostname   : $(hostname)"
echo "📂 Directory  : $(pwd)"
echo "👤 User       : $(whoami)"
echo "🧪 Shell      : $SHELL"
echo "====================================="

# Check if running in Jenkins
if [ -n "$JENKINS_HOME" ]; then
    echo "🧩 Detected Jenkins environment: $JENKINS_HOME"
else
    echo "⚠️ Not running inside Jenkins (JENKINS_HOME not set)"
fi

# List all files in current directory
echo "📁 Listing files in working directory:"
ls -la

# Check Git version
if command -v git &> /dev/null; then
    echo "✅ Git is installed: $(git --version)"
else
    echo "❌ Git is not installed."
fi

# Check Bash version
echo "🔍 Bash version: $BASH_VERSION"

# Simulate build/test process
echo "🔧 Simulating build process..."
sleep 1
echo "🔨 Compiling..."
sleep 1
echo "✅ Build completed successfully!"

# Optional: Run a test (dummy)
echo "🧪 Running tests..."
sleep 1
echo "✅ All tests passed!"

echo "====================================="
echo "🎉 Script completed successfully!"
echo "====================================="
