# 📦 Deployment Documentation

## Overview

Panduan lengkap untuk deploy Flutter Weather App ke berbagai platform.

---

## 🔄 Deployment Methods

### 1. GitHub Actions (Automated) ⭐ **RECOMMENDED**
- Trigger: Push ke GitHub
- Builds: Android APK, Web
- Deploy: GitHub Pages
- Status: ✅ **Setup & Ready**

### 2. Manual Build & Deploy
- Manual build locally
- Upload manually
- More control, slower

### 3. App Store/Play Store
- iOS: Apple App Store
- Android: Google Play Store
- Requires signing certificates

---

## 🌐 GitHub Pages Deployment (Automated)

### What Happens Automatically

When you push code to GitHub:

1. ✅ GitHub Actions triggers
2. ✅ Flutter builds web version
3. ✅ Web deployed to GitHub Pages
4. ✅ Live in ~5-10 minutes

### Access Live Web App

```
https://sugikne.github.io/Cuacaapp/
```

### Setup (Already Done!)

- ✅ Workflows created
- ✅ GitHub Pages enabled
- ✅ Deploy branch: `gh-pages`

### To Deploy

```bash
# Make changes
git add .
git commit -m "Update app"
git push origin main

# Web app auto-deploys in 5 minutes!
# Check: https://sugikne.github.io/Cuacaapp/
```

---

## 📱 Android APK Deployment

### Build Locally

```bash
# Build release APK
flutter build apk --release

# Output: build/app/outputs/flutter-app.apk
```

### Download from GitHub Actions

1. Go to **Actions** tab
2. Select latest workflow run
3. Download **app-release.apk** artifact
4. Share or upload to Play Store

### Manual Upload to Play Store

1. Install APK on device via USB or QR code
2. For production release:
   - Create signing key (one time)
   - Build with keystore
   - Upload to Google Play Console

---

## 🏗️ iOS Deployment

### Build Locally

```bash
# Build iOS app
flutter build ios --release

# Output: build/ios/Release-iphoneos/Runner.app
```

### To App Store

Requirements:
- Mac computer
- Xcode installed
- Apple Developer Account
- Signing certificates

```bash
# Build for App Store
flutter build ios --release

# Upload via Xcode or transporter
```

---

## 🖥️ Web Deployment (Multiple Options)

### Option 1: GitHub Pages (FREE) ✅

```bash
# Already configured!
# Just push code and it auto-deploys
git push origin main
```

URL: `https://sugikne.github.io/Cuacaapp/`

### Option 2: Firebase Hosting

```bash
# Install Firebase CLI
npm install -g firebase-tools

# Initialize
firebase init hosting

# Deploy
firebase deploy --only hosting
```

### Option 3: Netlify

```bash
# Build web
flutter build web --release

# Deploy (via Netlify web UI)
# - Drag & drop build/web folder
# - Or connect GitHub repo
```

### Option 4: Vercel

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel

# Follow prompts
```

---

## 🏷️ Release Management

### Creating Releases

```bash
# Create tag
git tag v1.0.0

# Push tag to GitHub
git push origin v1.0.0
```

### What Happens

1. ✅ Release workflow triggers
2. ✅ APK is built
3. ✅ GitHub Release page created
4. ✅ APK uploaded to release
5. ✅ Web deployed
6. ✅ Release notes available

### Release Naming Convention

```
v1.0.0        (major.minor.patch)
v1.1.0-beta   (beta release)
v2.0.0-rc.1   (release candidate)
```

---

## 📊 Deployment Timeline

### GitHub Actions Build Times

```
Task               │ Time
─────────────────┼─────────
Checkout          │ 10 sec
Setup Flutter     │ 30 sec
Get Dependencies  │ 20 sec
Analyze           │ 40 sec
Run Tests         │ 60 sec
Build APK         │ 180 sec
Build Web         │ 120 sec
Deploy Web        │ 30 sec
─────────────────┼─────────
TOTAL             │ ~8 min
```

---

## 🔐 Security Checklist

### Before Production

- [ ] API keys are NOT hardcoded
- [ ] Use environment variables
- [ ] HTTPS enabled
- [ ] Input validation done
- [ ] Error handling implemented
- [ ] No sensitive data logged

### Current Status

- ✅ API key safe (demo only)
- ✅ HTTPS used
- ✅ Error handling implemented
- ⚠️ API key should be moved to environment for production

---

## 📈 Post-Deployment

### Monitor

1. **Check GitHub Actions**
   - Go to Actions tab
   - See build status
   - View logs if needed

2. **Test Web App**
   - Visit: https://sugikne.github.io/Cuacaapp/
   - Test search functionality
   - Check responsiveness

3. **Download APK**
   - From workflow artifacts
   - Install on Android device
   - Test functionality

### Troubleshooting

| Issue | Solution |
|-------|----------|
| Workflow fails | Check logs in Actions tab |
| Web doesn't load | Check gh-pages branch exists |
| APK won't install | Check Android version compatibility |
| Build timeout | Split into smaller builds |

---

## 🚀 Deployment Checklist

### Initial Setup ✅
- [ ] GitHub Actions workflows created
- [ ] GitHub Pages enabled
- [ ] Repository configured
- [ ] Documentation ready

### First Deployment
- [ ] Code is ready
- [ ] All tests pass
- [ ] No compilation errors
- [ ] Commit and push
- [ ] Monitor Actions tab
- [ ] Verify web deployment

### Regular Deployments
- [ ] Make changes
- [ ] Test locally: `flutter run`
- [ ] Commit: `git commit -m "message"`
- [ ] Push: `git push origin main`
- [ ] Monitor: Check Actions tab
- [ ] Verify: Test deployed app

### Release Deployment
- [ ] Update version number
- [ ] Update CHANGELOG
- [ ] Create tag: `git tag v*.*.* `
- [ ] Push tag: `git push origin v*.*.*`
- [ ] Monitor release workflow
- [ ] Verify GitHub Release page
- [ ] Download APK if needed

---

## 📝 Deployment Examples

### Example 1: Regular Update

```bash
# Make changes
echo "some changes" >> lib/main.dart

# Commit
git add .
git commit -m "Update UI design"

# Push (triggers build & deploy)
git push origin main

# Result:
# - APK built and available
# - Web auto-deployed to GitHub Pages
# - Takes ~8 minutes
```

### Example 2: Release

```bash
# Tag the release
git tag v1.0.0

# Push tag (triggers release workflow)
git push origin v1.0.0

# Result:
# - GitHub Release created
# - APK uploaded to release
# - Web deployed
# - Release notes available
```

### Example 3: Multiple Platforms

```bash
# Code change
git add .
git commit -m "Fix weather display"
git push origin main

# After ~8 minutes:
# ✅ Android APK ready
# ✅ Web app live
# ✅ Artifacts available

# Can now:
# - Download APK from artifacts
# - Share APK to others
# - Upload to Play Store manually
# - Web already live
```

---

## 🎯 Deployment Strategy

### Development
```
Feature Branch → Pull Request → Main
    (Test)          (Build)      (Deploy)
```

### Production
```
Main Branch → Tag (v*.*.*)→ Release
    (Build)   (Build + Release)
```

### Release Process
1. Develop on feature branches
2. Create PR to main
3. Merge to main
4. Tag for release
5. GitHub Release created

---

## 📞 Additional Resources

### GitHub Actions
- Docs: https://docs.github.com/en/actions
- Marketplace: https://github.com/marketplace

### Flutter Deployment
- Docs: https://flutter.dev/deployment
- Web: https://flutter.dev/docs/deployment/web
- Android: https://flutter.dev/docs/deployment/android
- iOS: https://flutter.dev/docs/deployment/ios

### App Stores
- Google Play: https://play.google.com/console
- Apple App Store: https://appstoreconnect.apple.com

---

## ✅ Status

| Component | Status | Notes |
|-----------|--------|-------|
| GitHub Actions | ✅ Ready | 2 workflows configured |
| GitHub Pages | ✅ Ready | Web deployment enabled |
| APK Build | ✅ Ready | Android builds automated |
| Releases | ✅ Ready | Tag-based releases configured |
| Documentation | ✅ Complete | Full guides provided |

---

## 🎉 Ready to Deploy!

Your app is now ready for:
- ✅ Continuous integration (every push)
- ✅ Continuous deployment (web auto-deploy)
- ✅ Release management (tag-based releases)
- ✅ Multi-platform builds

**Next Steps:**
1. Make code changes
2. Commit and push
3. Watch GitHub Actions build
4. See web app deploy automatically
5. Download APK if needed
6. Create releases with tags

---

**Last Updated**: November 11, 2025
**Version**: 1.0.0
**Status**: ✅ Production Ready
