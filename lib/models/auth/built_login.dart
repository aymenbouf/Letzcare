import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:letzcqre/models/profile/built_user.dart';

part 'built_login.g.dart';


abstract class LoginModel implements Built<LoginModel, LoginModelBuilder> {
  @BuiltValueField(wireName: 'access_token')
  String get access_token;
  @BuiltValueField(wireName: 'token_type')
  String get token_type;
  @BuiltValueField(wireName: 'user')
  UserModel get user;
  
  LoginModel._();

  factory LoginModel([void Function(LoginModelBuilder)? updates]) = _$LoginModel;
  static Serializer<LoginModel> get serializer => _$loginModelSerializer;
}
