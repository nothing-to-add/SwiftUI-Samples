# SwiftUI-Samples

### About

Simple SwiftUI projects as samples and examples. See projects files in `Projects` folder.

## Navigate

- [Simple Login Screen](#simple-login-screen)
- [TabView Content](#tabview-content)

## Simple Login Screen

<img align="left" src="Previews/SimpleLoginScreen.png" width="250">

#### Logic

> Simple logic is behind the screen. No hardcoded accounts or mock data. Implemented 2 screens with Login option and navigation to further main screen of application. As a parameter for the main screen is username as String.

## TabView Content

<img align="left" src="Previews/TabView-Content.png" width="250">

#### Logic

> Implemented 5 different tabs for single TabView. Collection of the data is based on hardcoded values inside the model structs (without mock or real Api calls). Implemented QR code scanner screen with some fake result instead of real verification. Account and Tickets data are taken from the same source. Logout screen is implemented with discard BarView from the Navigation stack and return to Initial screen. Base tab for TabView is the first one that is defined in the code.