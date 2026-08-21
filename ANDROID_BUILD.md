# Export to Android

I recommend installing Android Studio and the Android SDK to build for Android.

## Steps to Export to Android:

1. In Godot, go to **Project → Export**
2. Add a new Android preset
3. Configure:
   - Package name: `com.example.deadcells`
   - App name: `Dead Cells`
   - Min SDK: 21
   - Target SDK: 33
4. Add Android SDK path
5. Click **Export Project** and select location
6. Transfer the APK to your phone or use `adb install`

## Alternative: Use Godot Cloud Build

If you don't want to set up Android SDK:
1. Sign in to https://export.godotengine.cloud/
2. Upload your project
3. Get the built APK directly
