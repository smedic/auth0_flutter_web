import 'get_token_stub.dart'
    if (dart.library.io) 'get_token_mobile.dart'
    if (dart.library.js) 'get_token_web.dart' as impl;

/// Cross-platform method for fetching token
Future<String?> getToken({
  required String auth0Domain,
  required String auth0ClientId,
  String? audience,
  String? redirectUri,
}) =>
    impl.getToken(
      auth0Domain: auth0Domain,
      auth0ClientId: auth0ClientId,
      redirectUri: redirectUri,
      audience: audience,
    );
