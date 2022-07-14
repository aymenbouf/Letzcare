import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:letzcqre/models/office/built_office_staff.dart';

part 'built_office.g.dart';

abstract class OfficesResponse implements Built<OfficesResponse, OfficesResponseBuilder> {

  BuiltList<OfficeModel?> get Offices; 
  OfficesResponse._();

  factory OfficesResponse([void Function(OfficesResponseBuilder)? updates]) =
      _$OfficesResponse;
  static Serializer<OfficesResponse> get serializer => _$officesResponseSerializer;
}

abstract class OfficeModel implements Built<OfficeModel, OfficeModelBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'address')
  String get address;
  @BuiltValueField(wireName: 'cns_registration_number')
  String get cns_registration_number;
  @BuiltValueField(wireName: 'office_phone')
  String get office_phone;
  @BuiltValueField(wireName: 'contact_phone')
  String get contact_phone;
  @BuiltValueField(wireName: 'manager_first_name')
  String get manager_first_name;
  @BuiltValueField(wireName: 'manager_last_name')
  String get manager_last_name;
  @BuiltValueField(wireName: 'created_at')
  String? get created_at;
  @BuiltValueField(wireName: 'updated_at')
  String? get updated_at;
  @BuiltValueField(wireName: 'office_staff')
  OfficestaffModel? get office_staff;

  OfficeModel._();

  factory OfficeModel([void Function(OfficeModelBuilder)? updates]) =
      _$OfficeModel;
  static Serializer<OfficeModel> get serializer => _$officeModelSerializer;
}
