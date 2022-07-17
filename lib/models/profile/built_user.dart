import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:letzcqre/models/office/built_office.dart';

part 'built_user.g.dart';


abstract class UserModel implements Built<UserModel, UserModelBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'medical_office_id')
  String? get medical_office_id;
  @BuiltValueField(wireName: 'first_name')
  String get first_name;
  @BuiltValueField(wireName: 'last_name')
  String get last_name;
  @BuiltValueField(wireName: 'personal_number')
  String get personal_number;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'position_held')
  String get position_held;
  @BuiltValueField(wireName: 'occupation')
  String get occupation;
  @BuiltValueField(wireName: 'image')
  String? get image;
  @BuiltValueField(wireName: 'email_verified_at')
  String? get email_verified_at;
  @BuiltValueField(wireName: 'created_at')
  String? get created_at;
  @BuiltValueField(wireName: 'updated_at')
  String? get updated_at;
  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'office')
  OfficeModel? get office;
  
  UserModel._();

  factory UserModel([void Function(UserModelBuilder)? updates]) = _$UserModel;
  static Serializer<UserModel> get serializer => _$userModelSerializer;
}
