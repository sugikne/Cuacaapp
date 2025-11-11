# 🚀 QUICK START - GitHub Actions Testing

## Untuk Mengaktifkan CI/CD Pipeline

### Option 1: Test Build (Recommended First Time)

**Langkah 1:** Buat perubahan kecil
```bash
# Edit file apapun, contoh:
echo "# Test trigger" >> README.md

git add README.md
git commit -m "Trigger GitHub Actions build test"
git push origin main
```

**Langkah 2:** Monitor Build
1. Buka: https://github.com/sugikne/Cuacaapp
2. Klik tab **Actions**
3. Lihat workflow `Flutter Build` running
4. Tunggu sampai ✅ selesai (biasanya 5-10 menit)

**Langkah 3:** Verifikasi
- ✅ Analyze passed
- ✅ Tests passed
- ✅ APK built
- ✅ Web built
- ✅ Deployed to GitHub Pages

---

### Option 2: Create Release (For Version Management)

**Langkah 1:** Create tag
```bash
git tag v1.0.0
git push origin v1.0.0
```

**Langkah 2:** Release workflow triggers automatically
- Creates GitHub Release page
- Uploads APK
- Deploys web version

**Langkah 3:** Access release
- https://github.com/sugikne/Cuacaapp/releases/tag/v1.0.0
- Download APK untuk Android

---

### Option 3: Manual Trigger (No Code Change Needed)

1. https://github.com/sugikne/Cuacaapp/actions
2. Select **Flutter Build** workflow
3. Click **Run workflow**
4. Select branch: `main`
5. Click green **Run workflow** button

---

## 📱 After First Successful Build

### Access Web Version
- URL: https://sugikne.github.io/Cuacaapp/
- Auto-updated setiap build selesai

### Download APK
- Go to Actions
- Select latest build
- Download `app-release.apk` artifact

### GitHub Pages Status
- Settings → Pages
- Verify: Deployed from branch `gh-pages`

---

## ✅ Checklist

- [ ] First build completed successfully
- [ ] GitHub Pages showing deployed web app
- [ ] APK artifact available in Actions
- [ ] Release created (optional)

---

**Status:** ✨ Ready for automated deployment!

*Next Steps:* Make a code change and push to trigger your first build.
