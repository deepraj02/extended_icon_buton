# Extended Icon Button

Extended Icon Button package lets you add a beautiful Icon Button as per your need to your Flutter app.

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  extended_icon_button: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:extended_icon_button/extended_icon_button';
```

## Example
There are a number of properties can be modified using this package:

 -  height
 - width               
 - title 
 - title style
 - icon
 - icon size
 - icon color
 - button color
 - hover elevation
 

<hr>

<table>
<tr>
<td>

```dart
ExtendedIconButtons(
    onPressed: () {
        Navigator.push(context,
            CupertinoPageRoute(builder: (context) {
            return const SettingsPage();
        }));
         },
    text: "My QR Code",
    icon: const Icon(Iarrow_forward_ios),
    color: const Color(0xFFC6CBDD)),
                    ),
                  ),
```

</td>
<td>
<img  src="https://user-images.githubusercontent.com/63138398/177283491-350a9d3c-611e-4074-ac7a-81af1e4cfdf2.png"  alt="">
</td>
</tr>
</table>

<img  src="https://user-images.githubusercontent.com/63138398/177283931-280cdbcc-6e3f-40b3-9183-f8b272089602.png"  alt="">

## Next Goals

 - [ ] Add Custom Border Radius Functionality.
 - [ ] Add Custom Button Elevation Property.
 
