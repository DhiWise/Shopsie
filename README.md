<h1> Shopsie </h1>

  <strong>
    Generated with ❤️ from Dhiwise
  </strong><br>
  <strong>
  
  Shopsie is an eCommerce demo application.This application has a technology stack of Flutter for front-end and the back-end has <a href="https://medusajs.com/"/>Medusa</a>'s eCommerce API.</strog>




### Table of Contents
- [Features](#features)
- [Screenshots](#screenshots)
- [Setup](#setup)
- [Version of Technologies](#version-of-technologies)
- [Folder Structure](#folder-structure)
- [MIT License](#mit-license)
- [Community](#community)


## Features
<ul>
<li>
Authentication
<ul>
<li>Email and Password Authentication</li>
<li>Google & Facebook Authentication</li>
</ul>
</li>
<li>
Products
<ul>
<li>Product Listing with image,price and title</li>
</ul>
</li>
<li>
Product Details
<ul>
<li>Product details image,price,description and title</li>
<li>Add to cart</li>
</ul>
</li>
<li>
Cart
<ul>
<li>Cart item list</li>
<li>Cart item remove</li>
<li>Item quantity change</li>
</ul>
<li>
Customer Infromation
<ul>
<li>Change customer details</li>
<li>Change password</li>
<li>Confirm order list</li>
<li>Shipping address list</li>
</ul>
</li>
<li>Product Search</li>
</ul>

<h1>Screenshots</h1>  


<image src="https://user-images.githubusercontent.com/112176734/189121885-8b332ecf-e849-4860-8d3d-ffdefad7e808.png" style="width:100%"/>


## Setup

#### 1. [Setup Medusa ](https://medusajs.com/)
#### 2. [Setup Flutter](https://flutter.io/setup/)
#### 3. [Setup FlutterFire](https://firebase.flutter.dev/docs/cli/)
#### 4. Clone the repo
```sh
$ git clone https://github.com/DhiWise/Shopsie
$ cd Shopsie/
```
#### 5. Setup the Social Auth
1. This app has firebase google/facebook and email - SignUp and SignIn. Thus, you need to add following files to run the application
- google-services.json
- facebook_app_id and token in strings.xml
- firebase_app_id_file.json for ios
- GoogleService-Info.plist for ios

2. Install flutterfire from [Here](https://firebase.flutter.dev/docs/cli/).

3. Use `flutterfire configure` to generate firebase_options.dart file.
- you can find these files in your firebase console and project setting.

4. Add your API base url or local IP on which server is running in api_client.dart

5. ```flutter pub get ```

6. ``` flutter run ```


<h1>Version of Technologies</h1>
Dart SDK Version 2.17.0 or greater. 
Flutter SDK Version 3.0.0 or greater.




## Folder Structure

```
├── android - contains files and folders required for running the application on an Android operating system.
├── assets - contains all images and fonts of your application.
├── ios - contains files required by the application to run the dart code on iOS platforms.
├── lib - Most important folder in the project, used to write most of the dart code.
├── main.dart - starting point of the application
├── core
│ ├── app_export.dart - contains commonly used file imports
│ ├── constants - contains all constants classes
│ ├── errors - contains error handling classes
│ ├── network - contains network related classes
│ └── utils - contains common files and utilities of project
├── data
│ ├── apiClient - contains api calling methods
│ ├── models - contains request/response models
│ └── repository - network repository
├── localization - contains localization classes
├── presentation - contains all screens and screen controllers
│ └── screens - contains all screens
├── routes - contains all the routes of application
└── theme - contains app theme and decoration classes

```

## MIT License

Copyright (c) 2022 DhiWise

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

 ## Community
 
 
<a href="https://twitter.com/dhiwise"><img src="https://user-images.githubusercontent.com/35039342/55471524-8e24cb00-5627-11e9-9389-58f3d4419153.png" width="60"></a>
<a href="https://www.linkedin.com/company/dhiwise"><img src="https://user-images.githubusercontent.com/35039342/55471530-94b34280-5627-11e9-8c0e-6fe86a8406d6.png" width="60"></a>
<a href="https://discord.com/channels/878500942604038215/878500943040217140"><img src="https://user-images.githubusercontent.com/47489894/183043664-b01aac56-0372-458a-bde9-3f2a6bded21b.png" width="60"></a>
