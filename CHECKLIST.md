
# Checklists

## Update to new version

### Change Version Number ###

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
    - update dependency version on `s.dependency` (if needed)

### Upload new Version to GitHub ###

- create new tag
    - `git add README.md AYNetworking-Info.plist AYNetworking.podspec`
    - `git commit -am "Update Version to ?.?.?`
    - `git tag v?.?.?` 
- update new tag
    - `git push origin master develop v?.?.?`
- validate Podspec with `pod spec lint AYNetworking.podspec`


### Add new Version to CocoaPods Spect ###

- `git pull cocoapods master`
- `git push origin master`
- add `mkdir AYNetworking/?.?.?/`
- copy `AYNetworking.podspec` into `AYNetworking/?.?.?/`
- `git add . && git ci -am "[Update] AYNetworking ?.?.?"`
- `git push origin master`
- [github](https://github.com/jboehler/Specs/compare/CocoaPods:master...master) pull request 