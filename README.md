# BuildTools

A set of plugins to be utilized in Swift Packages and eventually within Xcode projects when Xcode 14 is released in Fall 2022.

## Current available plugins:

### SwiftLint

This is a plugin for swift packages that will run SwiftLint at build time and show warnings and/or errors in the Xcode warnings windowpane as well as inline. There is a current proposal for a native implementation from [SwiftLint](https://github.com/realm/SwiftLint) and this will render this deprecated at that time. No ETA for when this release from [SwiftLint](https://github.com/realm/SwiftLint) will happen.

[Native SwiftLint BuildTool Proposal](https://github.com/realm/SwiftLint/issues/3840#issuecomment-1085699163)

#### How to add to a Swift Package:

**1.** Add a dependency from this package on any package that wants to utilize this plugin.

```
dependencies: [
    .package(url: "https://github.com/timthehelopilot/BuildTools", from: "1.0.0"),
]
```

**2.** Add it to any target by declaring it via the `plugins:` parameter that you want it to be applied to and run at build time.

```
targets: [
    .target(name: "NAME_OF_TARGET",
            dependencies: [ANY_DEPENDENCIES],
            plugins: [.plugin(name: "SwiftLint", package: "BuildTools")]),
]
```

**3.** Add `.swiftlint.yml` file to the root of your package.

### SwiftFormat

***TBD***

### DocumentationWarnings

***TBD***
