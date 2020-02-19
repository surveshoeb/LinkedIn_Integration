import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {

  String id;
  String firstName;
  String lastName;
  String profileImage;
  String loggedInFrom;
  String accessToken;

  User({this.id, this.firstName, this.lastName, this.profileImage, this.loggedInFrom, this.accessToken});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}