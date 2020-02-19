// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linkedin_access_token_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _LinkedInAccessTokenClient implements LinkedInAccessTokenClient {
  _LinkedInAccessTokenClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://www.linkedin.com/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getAccessToken(
      grantType, code, redirectURI, state, clientId, clientSecret) async {
    ArgumentError.checkNotNull(grantType, 'grantType');
    ArgumentError.checkNotNull(code, 'code');
    ArgumentError.checkNotNull(redirectURI, 'redirectURI');
    ArgumentError.checkNotNull(state, 'state');
    ArgumentError.checkNotNull(clientId, 'clientId');
    ArgumentError.checkNotNull(clientSecret, 'clientSecret');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'grant_type': grantType,
      'code': code,
      'redirect_uri': redirectURI,
      'state': state,
      'client_id': clientId,
      'client_secret': clientSecret
    };
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/oauth/v2/accessToken?',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LinkedInAccessToken.fromJson(_result.data);
    return Future.value(value);
  }
}
