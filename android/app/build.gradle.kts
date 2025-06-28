plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin") // Flutter plugin must come last
}

android {
    namespace = "com.example.testing"
    compileSdk = 35 // ✅ Set explicitly instead of using flutter.compileSdkVersion
    ndkVersion = "25.1.8937393" // ✅ Set a stable NDK version to avoid source.properties error

    defaultConfig {
        applicationId = "com.example.testing"
        minSdk = 21 // ✅ Replace flutter.minSdkVersion with explicit value
        targetSdk = 33 // ✅ Replace flutter.targetSdkVersion
        versionCode = 1 // ✅ Replace flutter.versionCode
        versionName = "1.0" // ✅ Replace flutter.versionName
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    buildTypes {
        getByName("release") {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
