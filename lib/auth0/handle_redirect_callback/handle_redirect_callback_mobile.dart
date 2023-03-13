/// Not applicable for mobile.
Future<bool> handleRedirectCallback({
  required String auth0Domain,
  required String auth0ClientId,
  String? audience,
  String? redirectUri,
  String? url,
}) async {
  return true;
}
