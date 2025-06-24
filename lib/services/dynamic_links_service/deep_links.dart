import 'dart:async';
import 'package:app_links/app_links.dart';

class DeepLinking {
  final _appLinks = AppLinks();
  StreamSubscription<String>? _sub;
  final _deepLinkStream = StreamController<Uri>.broadcast();

  Uri? _initialUri;

  Stream<Uri> get uriStream => _deepLinkStream.stream;

  /// Initialize and fetch initial URI
  Future<Uri?> initDeepLinking() async {
    try {
      final initialUriString = await _appLinks.getInitialLinkString();
      if (initialUriString != null) {
        _initialUri = Uri.tryParse(initialUriString);
        if (_initialUri != null) {
          _deepLinkStream.add(_initialUri!);
        }
      }

      _sub = _appLinks.stringLinkStream.listen(
            (String uriString) {
          final uri = Uri.tryParse(uriString);
          if (uri != null) {
            _deepLinkStream.add(uri);
          }
        },
        onError: (err) {
          // optional: log or handle stream error
        },
      );

      return _initialUri;
    } catch (_) {
      return null;
    }
  }

  void dispose() {
    _sub?.cancel();
    _deepLinkStream.close();
  }
}
