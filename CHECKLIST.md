
# Checklists

## Update to new version

### Version Number ###

- first commit all into **git**

- edit **README.md**
    - Update the version in the CocoaPods code snipped 
    - Update version of links to AFNetworking Class Reference
- edit **AYNetworking-Info.plist**
    - Update the version of `Bundle versions string, short` (CFBundleShortVersionString)
    - Update the version of `Bundle version` (CFBundleVersion)
- edit **AYNetworking.podspec**
    - update version on `s.version` 
    - update version on `s.source`
    - update dependency version on `s.dependency`

### Upload new Version ###

- create new tag
    - `git add README.md AYNetworking-Info.plist AYNetworking.podspec`
    - `git commit -am "Update Version to ?.?.?`
    - `git tag v?.?.?` 
- validate Podspec with `pod spec lint AYNetworking.podspec`
