---
date: 2020-04-26 13:00
description: Support Policy for SmokeAWS.
tags: support policy
---
# Version support

SmokeAWS will keep versions up-to-date with AWS service models for at least **6 months** after the release of the next major version.

Following these rules, the support level for different SmokeAWS versions are-
1. **SmokeAWS 1.x**: Supported. Support to be removed after approximately November, 2020.
2. **SmokeAWS 2.x**: Supported.

# Swift Version Support

SmokeAWS will provide support for the two most recent minor versions (X.Y and X.Y-1), verifying this support using continuous integration of all changes for these versions of the Swift toolchain.

## Support Removal

SmokeAWS has two mechanism for removing support for Swift Toolchain versions-
1. A new major version of SmokeAWS may remove support for Swift versions beyond the two most recent versions which are required to be supported.
2. An existing major version of SmokeAWS may remove support for a Swift version **6 months** after that version has stopped being one of the two most recent minor versions of the Swift Toolchain.

Once support has been removed, testing via continuous integration may be removed and no guarantees will be given for compiling the package using this version of the toolchain.

Following these rules, the support level for different Swift Toolchain versions are-
1. **Swift 4.0 and earlier**: No support.
2. **Swift 4.1**: Supported for SmokeAWS 1.x. No support for SmokeAWS 2.x.
3. **Swift 4.2**: Supported for SmokeAWS 1.x. No support for SmokeAWS 2.x.
4. **Swift 5.0**: Supported for SmokeAWS 1.x and 2.x. Support to be removed after 24th September, 2020.
5. **Swift 5.1**: Supported for SmokeAWS 1.x and 2.x.
6. **Swift 5.2**: Supported for SmokeAWS 1.x and 2.x.

# Runtime Support

SmokeAWS will provide support for the following runtimes, verifying this support using continuous integration of all changes for these runtimes-
1. Ubuntu 16.04
2. Ubuntu 18.04

# Development Support

Currently, SmokeAWS supports macOS as a development environment and will provide support for **at least** the two most recent macOS versions. For these two versions of macOS, SmokeAWS will ensure debug support as long as XCode does.

Following these rules, the support level for different macOS versions are-

SmokeAWS 2.x
* when compiling under Swift 5.2, ***macOS Catalina (10.15)*** or higher is required[1]
* when compiling under Swift 5.1 or Swift 5.0, ***macOS High Sierra (10.13)*** or higher is required

SmokeAWS 1.x
* ***macOS Sierra (10.12)*** or higher is required

[1] Swift 5.2 is shipped with XCode 11.4 which requires a Mac running macOS Catalina 10.15.2 or later and therefore SmokeAWS doesn't support the combination of Swift 5.2 with earlier versions of macOS

