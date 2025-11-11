# 🚀 GitHub Actions & Deployment Guide

## Overview

Repository ini dilengkapi dengan **GitHub Actions** untuk automated build, test, dan deployment.

---

## 📋 Workflow Files

### 1. **flutter_build.yml** - Main Build & Test
- Triggers: `push` ke `main` atau `develop` branch
- Actions:
  - ✅ Checkout code
  - ✅ Setup Flutter
  - ✅ Get dependencies
  - ✅ Run static analysis (flutter analyze)
  - ✅ Run unit tests (flutter test)
  - ✅ Build APK (Android)
  - ✅ Build Web
  - ✅ Upload artifacts
  - ✅ Deploy Web ke GitHub Pages

### 2. **release.yml** - Release Build & Deploy
- Triggers: Tag push (e.g., `v1.0.0`)
- Actions:
  - ✅ Build APK
  - ✅ Build Web
  - ✅ Create GitHub Release
  - ✅ Upload APK to Release
  - ✅ Deploy Web to GitHub Pages

---

## 🎯 Setup Guide

### Step 1: Enable GitHub Pages

1. Go to repository settings
2. Navigate to **Settings** → **Pages**
3. Source: Select `Deploy from a branch`
4. Branch: Select `gh-pages`
5. Save

### Step 2: Verify Workflows

1. Go to **Actions** tab
2. You should see workflows:
   - `Flutter Build & Test`
   - `Release Build`

### Step 3: Trigger Build

Push code to trigger automatic build:

```bash
git add .
git commit -m "your message"
git push origin main
```

---

## 📱 Automatic Builds Triggered By

### Build & Test Workflow
- ✅ Push ke `main` branch
- ✅ Push ke `develop` branch
- ✅ Pull request ke `main` atau `develop`

### Release Workflow
- ✅ Tag push format: `v*` (e.g., `v1.0.0`, `v1.1.0`)

---

## 🏷️ Creating Release Tags

```bash
# Create and push a tag
git tag v1.0.0
git push origin v1.0.0

# Or create from latest commit
git tag -a v1.0.0 -m "Version 1.0.0 Release"
git push origin v1.0.0
```

When tag is pushed:
1. ✅ Release workflow automatically triggers
2. ✅ APK is built and uploaded
3. ✅ Web version is deployed
4. ✅ GitHub Release page is created

---

## 📊 Build Artifacts

### Available Downloads

After successful build, artifacts are available:

#### From Build & Test Workflow
- **app-release.apk** - Android APK file
- **web-build** - Web application files

#### From Release Workflow
- **GitHub Release Page**
  - `flutter-weather-app-v*.apk` - Release APK
  - Auto-generated release notes

---

## 🌐 Web Deployment

### Access Deployed Web App

After deployment, web app is available at:

```
https://sugikne.github.io/Cuacaapp/
```

### GitHub Pages Settings

- Repository: Auto-configured
- Deploy branch: `gh-pages` (created automatically)
- Domain: `https://[username].github.io/[repo]/`

---

## 🔍 Monitor Builds

### View Build Status

1. **Actions Tab**
   - Click **Actions** in your repository
   - See all workflow runs
   - Click run to see details

2. **Commit Status**
   - Look for checkmark/X next to commits
   - Click to see details

3. **Workflow Logs**
   - Click workflow run
   - Expand each step to see logs
   - Debug issues here

---

## ⚠️ Common Issues & Solutions

### Issue: Workflow not triggering

**Solution:**
- Verify workflow file path: `.github/workflows/` (exact path required)
- Check branch name in trigger
- Wait a few minutes after push
- Manual trigger: Go to Actions tab, select workflow, click "Run workflow"

### Issue: Build fails

**Solution:**
- Check workflow logs
- Common causes:
  - Dependency issues: Run `flutter pub get` locally first
  - Lint errors: Run `flutter analyze` locally
  - Test failures: Run `flutter test` locally
  - Cache issues: Workflows have fresh cache

### Issue: Web deployment not working

**Solution:**
- Verify GitHub Pages is enabled
- Check `gh-pages` branch exists
- Verify `publish_dir: ./build/web` is correct
- Wait 1-2 minutes after deployment

### Issue: APK upload fails

**Solution:**
- Check if APK path is correct
- Verify build was successful
- Check artifact storage limits
- Delete old artifacts if needed

---

## 📈 Monitoring & Analytics

### GitHub Actions Usage

Check usage:
1. **Settings** → **Billing and plans**
2. Look at **Action minutes**
3. Public repo: Unlimited minutes
4. Private repo: 2000 free minutes/month

### Build Time Optimization

Current estimated build times:
- Analysis: ~1 min
- Tests: ~2 min
- APK Build: ~3 min
- Web Build: ~2 min
- Total: ~8 min per build

---

## 🔐 Security & Secrets

### GitHub Token
- Automatically provided: `${{ secrets.GITHUB_TOKEN }}`
- No additional setup needed
- Used for:
  - Creating releases
  - Uploading artifacts
  - Deploying pages

### Adding Custom Secrets (if needed)

1. Go to **Settings** → **Secrets and variables** → **Actions**
2. Click **New repository secret**
3. Add name and value
4. Use in workflows: `${{ secrets.SECRET_NAME }}`

---

## 📝 Workflow YAML Structure

### Event Triggers
```yaml
on:
  push:              # Trigger on push
    branches:        # To these branches
      - main
      - develop
  pull_request:      # Trigger on PR
    branches:
      - main
```

### Jobs & Steps
```yaml
jobs:
  build:             # Job name
    runs-on: ubuntu-latest  # Environment
    steps:           # List of steps
      - name: Step name
        run: command  # Command to run
```

### Using Artifacts
```yaml
- name: Upload artifact
  uses: actions/upload-artifact@v3
  with:
    name: artifact-name
    path: path/to/files

- name: Download artifact
  uses: actions/download-artifact@v3
  with:
    name: artifact-name
```

---

## 🔄 CI/CD Pipeline Flow

```
┌─────────────────────────────────────────┐
│ Developer Push Code to GitHub           │
└────────────┬────────────────────────────┘
             │
             ↓
┌─────────────────────────────────────────┐
│ GitHub Actions Triggers Workflow        │
└────────────┬────────────────────────────┘
             │
             ↓
┌─────────────────────────────────────────┐
│ 1. Checkout Code                        │
│ 2. Setup Flutter                        │
│ 3. Get Dependencies                     │
│ 4. Run Analysis & Tests                 │
└────────────┬────────────────────────────┘
             │
             ↓
        ┌────┴────┐
        │          │
        ↓          ↓
    SUCCESS     FAILURE
        │          │
        ↓          ↓
    BUILD      NOTIFY
    ARTIFACTS  DEVELOPER
        │
        ↓
    BUILD APK
    BUILD WEB
        │
        ↓
    UPLOAD
    ARTIFACTS
        │
        ↓
    IF MAIN:
    DEPLOY WEB
        │
        ↓
    IF TAG:
    CREATE
    RELEASE
```

---

## ✅ Deployment Checklist

- [ ] GitHub Actions workflows are committed
- [ ] GitHub Pages is enabled
- [ ] Branch protection rules (optional)
- [ ] First push triggers workflow
- [ ] Build completes successfully
- [ ] Artifacts are generated
- [ ] Web app is deployed
- [ ] Release tag is created
- [ ] GitHub Release is created

---

## 🚀 Quick Start for Deployment

### 1. Initial Setup (One Time)

```bash
# Already done, just verify:
# - .github/workflows/flutter_build.yml exists
# - .github/workflows/release.yml exists
# - GitHub Pages is enabled
```

### 2. Trigger Builds

```bash
# Build & Test on any push
git add .
git commit -m "your changes"
git push origin main

# Create release
git tag v1.0.0
git push origin v1.0.0
```

### 3. Monitor

Go to **Actions** tab and watch builds run automatically!

---

## 📞 Support & Resources

### GitHub Actions Documentation
- https://docs.github.com/en/actions
- https://github.com/actions/checkout
- https://github.com/subosito/flutter-action

### Flutter CI/CD
- https://flutter.dev/docs/deployment/cd

### Common Actions
- Upload artifacts: `actions/upload-artifact`
- Deploy pages: `peaceiris/actions-gh-pages`
- Create release: `actions/create-release`

---

## 🎯 What's Automated

### On Every Push to Main/Develop
- ✅ Code analysis (flutter analyze)
- ✅ Unit tests (flutter test)
- ✅ APK build
- ✅ Web build
- ✅ Artifact upload (for 90 days)
- ✅ Web deployment to GitHub Pages (if main branch)

### On Tag Push (v*)
- ✅ APK build
- ✅ Web build
- ✅ GitHub Release creation
- ✅ APK upload to release
- ✅ Web deployment
- ✅ Release notes auto-generated

---

## 📊 Status Badges

Add to README.md:

```markdown
![Build Status](https://github.com/sugikne/Cuacaapp/actions/workflows/flutter_build.yml/badge.svg)
```

---

## 🎉 You're Ready!

Your project now has:
- ✅ Automated builds on every push
- ✅ Automated testing
- ✅ APK generation
- ✅ Web deployment
- ✅ Release management
- ✅ Artifact storage

**Next Steps:**
1. Push code and watch workflow run
2. Monitor in Actions tab
3. Download artifacts
4. Create releases with tags

---

**Last Updated**: November 11, 2025
**Version**: 1.0.0
**Status**: ✅ Ready for automated deployment
