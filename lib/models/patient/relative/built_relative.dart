import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';



part 'built_relative.g.dart';


abstract class RelativedetailsModel implements Built<RelativedetailsModel, RelativedetailsModelBuilder> {
  @BuiltValueField(wireName: 'success')
  bool get success;
  @BuiltValueField(wireName: 'relative')
  RelativeModel get relative;
  
  
  RelativedetailsModel._();

  factory RelativedetailsModel([void Function(RelativedetailsModelBuilder)? updates]) = _$RelativedetailsModel;
  static Serializer<RelativedetailsModel> get serializer => _$relativedetailsModelSerializer;
}


abstract class RelativeModel implements Built<RelativeModel, RelativeModelBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'patient_id')
  int get patient_id;
  @BuiltValueField(wireName: 'first_name')
  String get first_name;
  @BuiltValueField(wireName: 'last_name')
  String get last_name;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'address')
  String get address;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'relationship')
  String get relationship;
  @BuiltValueField(wireName: 'is_contactable_person')
  int get is_contactable_person;
  @BuiltValueField(wireName: 'created_at')
  String? get created_at;
  @BuiltValueField(wireName: 'updated_at')
  String? get updated_at;
  
  RelativeModel._();

  factory RelativeModel([void Function(RelativeModelBuilder)? updates]) = _$RelativeModel;
  static Serializer<RelativeModel> get serializer => _$relativeModelSerializer;
}
