# homebrew-k10

Homebrew tap for `k10xcodechangeversion` — a shell tool that rewrites the version
metadata of an `.xcodeproj` (`objectVersion`, `LastUpgradeCheck`, `CreatedOnToolsVersion`,
`IPHONEOS_DEPLOYMENT_TARGET`, …) and can restore the original values from a backup.

## Install

```sh
brew tap kalashrah/k10
brew install k10xcodechangeversion
```

## Usage

```sh
k10xcodechangeversion set   MyApp.xcodeproj   # asks for new Xcode / iOS versions, creates a backup
k10xcodechangeversion reset MyApp.xcodeproj   # restores values from the backup
```

## Releasing a new version

1. Edit `bin/k10xcodechangeversion`, commit, then tag: `git tag vX.Y.Z && git push --tags`
2. `curl -sL https://github.com/kalashrah/homebrew-k10/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256`
3. Update `url` and `sha256` in `Formula/k10xcodechangeversion.rb`, commit and push.
