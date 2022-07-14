import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'built_office_staff.g.dart';


abstract class OfficestaffModel implements Built<OfficestaffModel, OfficestaffModelBuilder> {
  @BuiltValueField(wireName: 'staff_id')
  int get staff_id;
  @BuiltValueField(wireName: 'medical_office_id')
  int get medical_office_id;
  @BuiltValueField(wireName: 'created_at')
  String get created_at;
  @BuiltValueField(wireName: 'updated_at')
  String get updated_at;
  @BuiltValueField(wireName: 'state')
  int get state;
  @BuiltValueField(wireName: 'is_owner')
  int get is_owner;
  
  OfficestaffModel._();

  factory OfficestaffModel([void Function(OfficestaffModelBuilder)? updates]) = _$OfficestaffModel;
  static Serializer<OfficestaffModel> get serializer => _$officestaffModelSerializer;
}
