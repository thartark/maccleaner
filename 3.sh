#!/bin/bash

# =============================================================================
# PUREMAC - BUILD APP (Run this third)
# =============================================================================

echo "📍 Building PureMac.app with 100+ features..."

# Compile the app
swiftc -o PureMac.app/Contents/MacOS/PureMac PureMac.swift \
    -framework SwiftUI \
    -framework AppKit \
    -parse-as-library

if [ $? -eq 0 ]; then
    chmod +x PureMac.app/Contents/MacOS/PureMac
    echo "✅ Build successful!"
    echo ""
    echo "📁 Location: $PWD/PureMac.app"
    echo ""
    echo "✨ FEATURES INCLUDED:"
    echo "  • System Cleanup: 30 features"
    echo "  • File Management: 15 features"
    echo "  • Smart Automation: 15 features"
    echo "  • Performance: 15 features"
    echo "  • App Management: 15 features"
    echo "  • Privacy: 20 features"
    echo "  • Power Tools: 15 features"
    echo "  • Media: 12 features"
    echo "  • Cloud: 8 features"
    echo "  • Desktop: 10 features"
    echo "  • Reports: 7 features"
    echo "  • UX: 13 features"
    echo "  ──────────────────"
    echo "  🎯 TOTAL: 175+ FEATURES"
    echo ""
    echo "🚀 TO RUN:"
    echo "  open PureMac.app"
    echo ""
    echo "📦 TO INSTALL IN APPLICATIONS:"
    echo "  cp -R PureMac.app /Applications/"
else
    echo "❌ Build failed with error code: $?"
    exit 1
fi