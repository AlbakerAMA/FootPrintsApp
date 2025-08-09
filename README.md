# FootPrint

A Flutter project.

## Getting Started

├── README.md
├── analysis_options.yaml
├── android
    ├── .gitignore
    ├── app
    │   ├── build.gradle
    │   ├── google-services.json
    │   ├── proguard-rules.pro
    │   └── src
    │   │   ├── debug
    │   │       └── AndroidManifest.xml
    │   │   ├── main
    │   │       ├── AndroidManifest.xml
    │   │       ├── java
    │   │       │   └── io
    │   │       │   │   └── flutter
    │   │       │   │       └── plugins
    │   │       │   │           └── GeneratedPluginRegistrant.java
    │   │       ├── kotlin
    │   │       │   └── com
    │   │       │   │   └── example
    │   │       │   │       └── my_project
    │   │       │   │           └── MainActivity.kt
    │   │       └── res
    │   │       │   ├── drawable
    │   │       │       └── launch_background.xml
    │   │       │   ├── mipmap-hdpi
    │   │       │       └── ic_launcher.png
    │   │       │   ├── mipmap-mdpi
    │   │       │       └── ic_launcher.png
    │   │       │   ├── mipmap-xhdpi
    │   │       │       └── ic_launcher.png
    │   │       │   ├── mipmap-xxhdpi
    │   │       │       └── ic_launcher.png
    │   │       │   ├── mipmap-xxxhdpi
    │   │       │       └── ic_launcher.png
    │   │       │   ├── values-night-v31
    │   │       │       └── styles.xml
    │   │       │   ├── values-night
    │   │       │       └── styles.xml
    │   │       │   ├── values-v31
    │   │       │       └── styles.xml
    │   │       │   └── values
    │   │       │       ├── strings.xml
    │   │       │       └── styles.xml
    │   │   └── profile
    │   │       └── AndroidManifest.xml
    ├── build.gradle
    ├── gradle.properties
    ├── gradle
    │   └── wrapper
    │   │   └── gradle-wrapper.properties
    ├── local.properties
    └── settings.gradle
├── assets
    ├── audios
    │   └── favicon.png
    ├── fonts
    │   ├── Lexend Deca-SemiBold.ttf
    │   ├── Poppins-Medium.ttf
    │   ├── Poppins-Regular.ttf
    │   ├── Poppins-SemiBold.ttf
    │   ├── Raleway-SemiBold.ttf
    │   └── favicon.png
    ├── images
    │   ├── adaptive_foreground_icon.png
    │   └── favicon.png
    ├── jsons
    │   └── favicon.png
    ├── pdfs
    │   └── favicon.png
    ├── rive_animations
    │   └── favicon.png
    └── videos
    │   └── favicon.png
├── firebase
    ├── firebase.json
    ├── firestore.indexes.json
    ├── firestore.rules
    └── functions
    │   ├── api_manager.js
    │   ├── index.js
    │   └── package.json
├── ios
    ├── .gitignore
    ├── Flutter
    │   ├── AppFrameworkInfo.plist
    │   ├── Debug.xcconfig
    │   └── Release.xcconfig
    ├── ImageNotification
    │   ├── Info.plist
    │   └── NotificationService.swift
    ├── Podfile
    ├── Runner.xcodeproj
    │   ├── project.pbxproj
    │   ├── project.xcworkspace
    │   │   ├── contents.xcworkspacedata
    │   │   └── xcshareddata
    │   │   │   ├── IDEWorkspaceChecks.plist
    │   │   │   └── WorkspaceSettings.xcsettings
    │   └── xcshareddata
    │   │   └── xcschemes
    │   │       └── Runner.xcscheme
    ├── Runner.xcworkspace
    │   ├── contents.xcworkspacedata
    │   └── xcshareddata
    │   │   ├── IDEWorkspaceChecks.plist
    │   │   └── WorkspaceSettings.xcsettings
    └── Runner
    │   ├── AppDelegate.swift
    │   ├── Assets.xcassets
    │       ├── AppIcon.appiconset
    │       │   ├── Contents.json
    │       │   ├── Icon-App-1024x1024@1x.png
    │       │   ├── Icon-App-20x20@1x.png
    │       │   ├── Icon-App-20x20@2x.png
    │       │   ├── Icon-App-20x20@3x.png
    │       │   ├── Icon-App-29x29@1x.png
    │       │   ├── Icon-App-29x29@2x.png
    │       │   ├── Icon-App-29x29@3x.png
    │       │   ├── Icon-App-40x40@1x.png
    │       │   ├── Icon-App-40x40@2x.png
    │       │   ├── Icon-App-40x40@3x.png
    │       │   ├── Icon-App-60x60@2x.png
    │       │   ├── Icon-App-60x60@3x.png
    │       │   ├── Icon-App-76x76@1x.png
    │       │   ├── Icon-App-76x76@2x.png
    │       │   └── Icon-App-83.5x83.5@2x.png
    │       └── LaunchImage.imageset
    │       │   ├── Contents.json
    │       │   ├── LaunchImage.png
    │       │   ├── LaunchImage@2x.png
    │       │   ├── LaunchImage@3x.png
    │       │   └── README.md
    │   ├── Base.lproj
    │       ├── LaunchScreen.storyboard
    │       └── Main.storyboard
    │   ├── GoogleService-Info.plist
    │   ├── Info.plist
    │   ├── PrivacyInfo.xcprivacy
    │   ├── Runner-Bridging-Header.h
    │   └── Runner.entitlements
├── lib
    ├── app_state.dart
    ├── auth
    │   ├── auth_manager.dart
    │   ├── base_auth_user_provider.dart
    │   └── firebase_auth
    │   │   ├── anonymous_auth.dart
    │   │   ├── apple_auth.dart
    │   │   ├── auth_util.dart
    │   │   ├── email_auth.dart
    │   │   ├── firebase_auth_manager.dart
    │   │   ├── firebase_user_provider.dart
    │   │   ├── github_auth.dart
    │   │   ├── google_auth.dart
    │   │   └── jwt_token_auth.dart
    ├── backend
    │   ├── api_requests
    │   │   ├── api_manager.dart
    │   │   └── get_streamed_response.dart
    │   ├── backend.dart
    │   ├── firebase
    │   │   └── firebase_config.dart
    │   └── schema
    │   │   ├── colors_record.dart
    │   │   ├── index.dart
    │   │   ├── menu_record.dart
    │   │   ├── sizes_record.dart
    │   │   ├── structs
    │   │       ├── index.dart
    │   │       └── products_struct.dart
    │   │   ├── user_cart_record.dart
    │   │   ├── user_order_record.dart
    │   │   ├── users_record.dart
    │   │   └── util
    │   │       ├── firestore_util.dart
    │   │       └── schema_util.dart
    ├── components
    │   ├── cart_item
    │   │   ├── cart_item_model.dart
    │   │   └── cart_item_widget.dart
    │   ├── choosing_model.dart
    │   ├── choosing_widget.dart
    │   ├── quantity_price
    │   │   ├── quantity_price_model.dart
    │   │   └── quantity_price_widget.dart
    │   ├── walkthrough_model.dart
    │   └── walkthrough_widget.dart
    ├── flutter_flow
    │   ├── flutter_flow_animations.dart
    │   ├── flutter_flow_drop_down.dart
    │   ├── flutter_flow_icon_button.dart
    │   ├── flutter_flow_model.dart
    │   ├── flutter_flow_theme.dart
    │   ├── flutter_flow_util.dart
    │   ├── flutter_flow_video_player.dart
    │   ├── flutter_flow_widgets.dart
    │   ├── form_field_controller.dart
    │   ├── lat_lng.dart
    │   ├── place.dart
    │   └── uploaded_file.dart
    ├── index.dart
    ├── main.dart
    ├── pages
    │   ├── checkout_page
    │   │   ├── checkout_page_model.dart
    │   │   └── checkout_page_widget.dart
    │   ├── create_account_page
    │   │   ├── create_account_page_model.dart
    │   │   └── create_account_page_widget.dart
    │   ├── intro
    │   │   ├── intro_model.dart
    │   │   └── intro_widget.dart
    │   ├── login_page
    │   │   ├── login_page_model.dart
    │   │   └── login_page_widget.dart
    │   ├── menu_page
    │   │   ├── menu_page_model.dart
    │   │   └── menu_page_widget.dart
    │   └── succesfulcheckout
    │   │   ├── succesfulcheckout_model.dart
    │   │   └── succesfulcheckout_widget.dart
    └── walkthroughs
    │   ├── cart.dart
    │   └── walkthrough.dart
├── pubspec.yaml
├── test
    └── widget_test.dart
└── web
    ├── favicon.png
    ├── flutter_bootstrap.js
    ├── icons
        ├── Icon-192.png
        └── Icon-512.png
    └── index.html
