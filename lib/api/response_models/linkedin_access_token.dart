import 'package:json_annotation/json_annotation.dart';

part 'linkedin_access_token.g.dart';

@JsonSerializable()
class LinkedInAccessToken {

  String access_token;
  int expires_in;
  String error;
  String error_description;

  LinkedInAccessToken({this.access_token, this.expires_in, this.error, this.error_description});

  factory LinkedInAccessToken.fromJson(Map<String, dynamic> json) => _$LinkedInAccessTokenFromJson(json);
  Map<String, dynamic> toJson() => _$LinkedInAccessTokenToJson(this);
}