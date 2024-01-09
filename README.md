# Scrum App
This is the Swift based iOS Application for "Scrumdinger". Scrumdinger is an application to manage meetings according to the Scrum collaboration framework. The app is based on an official tutorial provided by the Apple Developer Platform: https://developer.apple.com/tutorials/app-dev-training. I used this tutorial as a foundation to learn the basics of iOS development and play around with additional iOS features.

## Preview

## Project Description

### Motivation for Application
Mobile applications allow bridging the gap between high-level architectural planning and user-centric application design. Many projects I have developed in the past were developed in formats such as Python notebooks or scripts which are not tangible for many audiences. To understand the process of wrapping research or industrial projects in an understandable fashion, I wanted to get in touch with mobile app development.

### Choice of Tech Stack
The mobile application uses Swift with SwiftUI as a programming language. Reasons for choosing Swift include:
+ Optimized Compatibility: Compared to cross-platform frameworks like React Native or Flutter, Swift is optimized for Apple's hardware. I may have to use a very specific set of iOS specific features in a future project.
+ Performance: Swift uses native features which don't require preprocessing and increase performance for compute-intense tasks
+ User Interface: SwiftUI provides access to UI components that adhere to Apple's design schemes for mobile applications

### Repository Structure
+ `/Resources/`: Resources such as sound files
+ `/Models/`: Classes and structures for the application's underlying logic
+ `/Views/`: SwiftUI views, i.e. user interfaces for the application
+ `/Assets/`: Definition of colors, themes, and app icon
