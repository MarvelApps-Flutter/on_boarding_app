# On boarding demo
A new flutter app for demonstrating on boarding screens.

# Demo
<img src="https://github.com/MarvelApps-Flutter/on_boarding_app/blob/master/screenshots/gif/demo.gif" height="480px"></td>

# Android Screenshots

<table>
  <tr>
    <td><img src="https://github.com/MarvelApps-Flutter/on_boarding_app/blob/master/screenshots/android/android1.png" height="480px"></td>
    <td><img src="https://github.com/MarvelApps-Flutter/on_boarding_app/blob/master/screenshots/android/android2.png" height="480px"></td>
    <td><img src="https://github.com/MarvelApps-Flutter/on_boarding_app/blob/master/screenshots/android/android3.png" height="480px"></td>
  </tr>
 </table>
</br>

# IOS Screenshots

<table>
  <tr>
    <td><img src="https://github.com/MarvelApps-Flutter/on_boarding_app/blob/master/screenshots/ios/ios1.png" height="480px"></td>
    <td><img src="https://github.com/MarvelApps-Flutter/on_boarding_app/blob/master/screenshots/ios/ios2.png" height="480px"></td>
    <td><img src="https://github.com/MarvelApps-Flutter/on_boarding_app/blob/master/screenshots/ios/ios3.png" height="480px"></td>
  </tr>
 </table>


## [fastlane match](https://docs.fastlane.tools/actions/match/)

This repository contains all your certificates and provisioning profiles needed to build and sign your applications. They are encrypted using OpenSSL via a passphrase.

**Important:** Make sure this repository is set to private and only your team members have access to this repo.

Do not modify this file, as it gets overwritten every time you run _match_.

### Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using

```
[sudo] gem install fastlane -NV
```

or alternatively using `brew install fastlane`

### Usage

Navigate to your project folder and run

```
fastlane match appstore
```

```
fastlane match adhoc
```

```
fastlane match development
```

```
fastlane match enterprise
```

For more information open [fastlane match git repo](https://docs.fastlane.tools/actions/match/)

### Content

#### certs

This directory contains all your certificates with their private keys

#### profiles

This directory contains all provisioning profiles

---

For more information open [fastlane match git repo](https://docs.fastlane.tools/actions/match/)
