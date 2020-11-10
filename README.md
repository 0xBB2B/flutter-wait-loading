# flutter-wait-loading
A flutter tool - loading with avoid accidental touch

## Usage
```dart
WaitLoading.of(context).wait({Future function});
```
or
```dart
var response = await WaitLoading.of(context).wait({Future function});
```
