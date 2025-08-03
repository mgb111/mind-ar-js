#!/bin/bash

# 🚀 MindAR Compiler Deployment Script
# This script helps you deploy the compiler to various platforms

echo "🎯 MindAR Compiler Deployment"
echo "=============================="

# Check if we're in the right directory
if [ ! -f "deploy-github-pages.html" ]; then
    echo "❌ Error: deploy-github-pages.html not found!"
    echo "Please run this script from the project root directory."
    exit 1
fi

# Create deployment directory
echo "📁 Creating deployment files..."
mkdir -p deploy
cp deploy-github-pages.html deploy/index.html
cp DEPLOYMENT.md deploy/

# Create README for deployment
cat > deploy/README.md << 'EOF'
# 🎯 MindAR Compiler

A beautiful web-based compiler to convert images to AR-ready .mind files.

## Features
- 🖼️ Drag & drop image upload
- ⚡ Real-time compilation progress
- 🎨 Beautiful, responsive UI
- 📱 Mobile-friendly interface
- 💾 Download compiled .mind files

## Usage
1. Drop your images (PNG, JPG) into the dropzone
2. Click "Start Compilation"
3. Watch the progress and debug visualizations
4. Download your .mind file

## Deploy Options
- **GitHub Pages**: Free static hosting
- **Netlify**: Drag & drop deployment
- **Vercel**: Modern deployment platform
- **Firebase**: Google's hosting solution

See DEPLOYMENT.md for detailed instructions.
EOF

echo "✅ Deployment files created in 'deploy/' directory"
echo ""
echo "🚀 Quick Deploy Options:"
echo ""
echo "1. GitHub Pages:"
echo "   cd deploy"
echo "   git init"
echo "   git add ."
echo "   git commit -m 'Initial commit'"
echo "   git remote add origin https://github.com/yourusername/mindar-compiler.git"
echo "   git push -u origin main"
echo ""
echo "2. Netlify:"
echo "   - Drag the 'deploy' folder to https://netlify.com"
echo "   - Your site will be live instantly!"
echo ""
echo "3. Vercel:"
echo "   cd deploy"
echo "   npx vercel"
echo ""
echo "4. Firebase:"
echo "   cd deploy"
echo "   firebase init hosting"
echo "   firebase deploy"
echo ""
echo "📁 Your deployment files are ready in the 'deploy/' directory!"
echo "🎉 Choose your platform and deploy!" 