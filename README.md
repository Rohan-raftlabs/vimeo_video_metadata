# Vimeo API Dart Package

A lightweight Dart package to fetch Vimeo video metadata using the official oEmbed API. Cleanly designed for easy use, extensibility, and testability.

---

## ✨ Features

- Get video metadata by URL or video ID.
- Clean interface via `IVimeoApi`.
- Uses Vimeo’s [oEmbed API](https://developer.vimeo.com/api/oembed).
- Timeout support.
- Simple to use via `createVimeoApi()` factory function.
- Fully testable and mock-friendly.

---

## 📦 Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  vimeo_api: ^0.0.1 or latest
```

Then run:

flutter pub get or  dart pub get

Ensure that you have added internet permissions to your app in the `AndroidManifest.xml` file for Android .
No need to add any permissions for iOS.

```xml
<uses-permission android:name="android.permission.INTERNET"/>
```

---

## 🚀 Usage

```dart
import 'package:vimeo_api/vimeo_api.dart';

void main() async {
  final api = createVimeoApi(timeoutInSeconds: 15);

  final metadata = await api.getVideoMetaByUrl("https://vimeo.com/718338402");

  if (metadata != null) {
    print("Title: ${metadata.title}");
    print("Author: ${metadata.authorName}");
    print("Thumbnail: ${metadata.thumbnailUrl}");
  } else {
    print("Failed to fetch metadata.");
  }
}
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.Developed by [Rohan Kumar Panigrahi](https://www.linkedin.com/in/rohan-kumar-panigrahi-187a12193/) at [RaftLabs](https://www.raftlabs.com/).
