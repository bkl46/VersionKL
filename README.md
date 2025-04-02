# Instagram Access Control App

A simple iOS app that allows users to toggle access to the Instagram app.

## Requirements

- Xcode 15.0 or later
- iOS 16.0 or later
- Swift 5.0 or later

## Installation

1. Clone this repository
2. Open `InstagramAccess.xcodeproj` in Xcode
3. Select your development team in the project settings
4. Build and run the project on your iOS device or simulator

## Features

- Simple toggle switch to enable/disable Instagram access
- Clean and intuitive user interface
- Persistent storage of access settings

## Project Structure

- `InstagramAccessController.swift`: Main view controller with the UI
- `InstagramAccessService.swift`: Service layer for managing Instagram access
- `AppDelegate.swift`: Application delegate
- `SceneDelegate.swift`: Scene delegate for window management

## Note

This is an MVP (Minimum Viable Product) implementation. In a production environment, you would need to:

1. Integrate with iOS Screen Time API for actual app restriction
2. Add proper authentication
3. Implement more sophisticated UI
4. Add proper error handling
5. Include app icon and launch screen
6. Add proper documentation

## License

This project is available under the MIT License. 