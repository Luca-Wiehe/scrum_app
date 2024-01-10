# Scrum App
This is the Swift based iOS Application for "Scrumdinger". Scrumdinger is an application to manage meetings according to the Scrum collaboration framework. The app is based on an official tutorial provided by the Apple Developer Platform: https://developer.apple.com/tutorials/app-dev-training. I used this tutorial as a foundation to learn the basics of iOS development and play around with additional iOS features.

## Preview
To gain some insights into the Web Application, check out the following Screenshots:

<div style="display: grid; grid-template-columns: repeat(2, 1fr); grid-gap: 20px; justify-content: center; text-align: center;">
  <div>
    <img width="235" alt="image" src="https://github.com/Luca-Wiehe/scrum_app/assets/85710000/d7a1aa22-d587-4c1e-b9ea-3d48416b8890">
    <br>
    <em>Screenshot 1: Meeting Overview</em>
  </div>
  <br>
  <div>
    <img width="235" alt="image" src="https://github.com/Luca-Wiehe/scrum_app/assets/85710000/f5eeae2c-05a9-4f12-98c6-9f0fc5db7dd1">
    <br>
    <em>Screenshot 2: Schedule Meetings</em>
  </div>
  <br>
  <div>
    <img width="235" alt="image" src="https://github.com/Luca-Wiehe/scrum_app/assets/85710000/ff1d5ca5-2386-4fc4-84ff-d4963bf12c3c">
    <br>
    <em>Screenshot 3: Meeting Details</em>
  </div>
  <br>
  <div>
    <img width="235" alt="image" src="https://github.com/Luca-Wiehe/scrum_app/assets/85710000/ee7224ab-e4b1-40dd-a3a9-8e0b7c8f9017">
    <br>
    <em>Screenshot 4: Scrum Meeting</em>
  </div>
</div>


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
