# react-native-svg-viewer

A react-native library to render SVG using native iOS and Android libraries.
Thanks to the native bridge and native rendering it guarantees maximum performance on both library, especially for large SVGs.

This library relies on:

- Android: [AndroidSVG](https://bigbadaboom.github.io/androidsvg/)
- iOS: [SVGKit](https://github.com/SVGKit/SVGKit)

N.B. currently it accepts as source only a string with a valid namespace

## Getting started

`$ yarn add react-native-svg-viewer`


### Mostly automatic installation

`$ react-native link react-native-svg-viewer`
Add `pod 'SVGKit', :git => 'https://github.com/SVGKit/SVGKit.git', :branch => '3.x'` to your podfile.

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-svg-viewer` and add `RNSVGViewer.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libSvgViewer.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Add `pod 'SVGKit', :git => 'https://github.com/SVGKit/SVGKit.git', :branch => '3.x'` to your podfile.
5. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import io.welld.RNSVGViewerPackage;` to the imports at the top of the file
  - Add `new RNSVGViewerPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-svg-viewer'
  	project(':react-native-svg-viewer').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-svg-viewer/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-svg-viewer')
  	```


## Usage
```javascript
import SVG, { getSize } from 'react-native-svg-viewer';

const source = "<svg xmlns='http://www.w3.org/2000/svg' width='200' height='210'> <rect width='200' height='200' style='fill:rgb(0,0,255);stroke-width:3;stroke:rgb(0,0,0)' /> Sorry, your browser does not support inline SVG. </svg>";

export default () => (
    <SVG
        source = { source }
        style = {{ width:200, height:210}}
    />
)
```
