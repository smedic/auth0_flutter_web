import 'package:auth0_flutter2/auth0/init_auth0/init_auth0_mobile.dart';

/// Fetches authenticated user credentials.
Future<String?> getToken({
  required String auth0Domain,
  required String auth0ClientId,
  String? audience,
  String? redirectUri,
}) async {
  try {
    final auth0 = initAuth0Mobile(
      auth0Domain,
      auth0ClientId,
    );

    /// Check if user is logged in.
    if (await auth0.credentialsManager.hasValidCredentials()) {
      final credentials = await auth0.credentialsManager.credentials();
      return credentials.accessToken;
    } else {
      return null;
    }
  } catch (e) {
    return null;
  }
}
