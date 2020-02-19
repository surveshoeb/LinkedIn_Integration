
import 'package:dio/dio.dart';
import 'package:linkedin_login/api/api_list.dart';
import 'package:linkedin_login/api/response_models/linkedin_user.dart';
import 'package:retrofit/http.dart';

part 'linkedin_rest_client.g.dart';

@RestApi(baseUrl: kLinkedInBaseURL)
abstract class LinkedInRestClient {
  factory LinkedInRestClient(Dio dio, {String baseUrl}) = _LinkedInRestClient;

  @GET(kMe)
  Future<LinkedInUser> getCurrentUser(@Query('projection') String projection);
}