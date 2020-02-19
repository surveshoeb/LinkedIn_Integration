// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linkedin_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _LinkedInRestClient implements LinkedInRestClient {
  _LinkedInRestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://api.linkedin.com/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getCurrentUser(projection) async {
    ArgumentError.checkNotNull(projection, 'projection');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{'projection': projection};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request('/v2/me',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = LinkedInUser.fromJson(_result.data);
    return Future.value(value);
  }
}
