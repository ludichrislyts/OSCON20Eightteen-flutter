/// Use to build: flutter packages pub run build_runner build

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  static Serializer<User> get serializer => _$userSerializer;

  String get login;
  String get name;
  String get avatarUrl;
  @nullable
  String get location;
  @nullable
  String get company;

  factory User([updates(UserBuilder b)]) = _$User;
  User._();
}
