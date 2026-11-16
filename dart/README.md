# Punycode Converter API - Dart/Flutter Client

Convert between Unicode and Punycode for internationalized domain names (IDN).

[![pub package](https://img.shields.io/pub/v/apiverve_punycode.svg)](https://pub.dev/packages/apiverve_punycode)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Punycode Converter API](https://apiverve.com/marketplace/punycode?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_punycode: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_punycode/apiverve_punycode.dart';

void main() async {
  final client = PunycodeClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'münchen.de',
      'mode': 'encode'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "input": "münchen.de",
    "output": "xn--mnchen-3ya.de",
    "mode": "encode",
    "isIDN": true,
    "isDomain": true,
    "scripts": [
      "Latin"
    ],
    "mixedScript": false
  }
}
```

## API Reference

- **API Home:** [Punycode Converter API](https://apiverve.com/marketplace/punycode?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/punycode](https://docs.apiverve.com/ref/punycode?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
