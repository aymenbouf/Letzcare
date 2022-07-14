import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:letzcqre/models/profile/built_user.dart';

part 'built_connect_office.g.dart';

abstract class DataModel implements Built<DataModel, DataModelBuilder> {
  @BuiltValueField(wireName: 'staff')
  UserModel get staff;
  
  
  DataModel._();

  factory DataModel([void Function(DataModelBuilder)? updates]) = _$DataModel;
  static Serializer<DataModel> get serializer => _$dataModelSerializer;
}


abstract class OfficeConnectionResponse implements Built<OfficeConnectionResponse,OfficeConnectionResponseBuilder> {
  @BuiltValueField(wireName: 'success')
  bool get success;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  DataModel get data;
  
  
 OfficeConnectionResponse._();

  factory OfficeConnectionResponse([void Function(OfficeConnectionResponseBuilder)? updates]) = _$OfficeConnectionResponse;
  static Serializer<OfficeConnectionResponse> get serializer => _$officeConnectionResponseSerializer;
}
