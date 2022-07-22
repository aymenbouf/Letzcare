import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_wish_error.g.dart';


abstract class ErrorModel implements Built<ErrorModel, ErrorModelBuilder> {
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'description')
  String get description;
   @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'status-code')
  int get status_code;
  
  
  ErrorModel._();

  factory ErrorModel([void Function(ErrorModelBuilder)? updates]) = _$ErrorModel;
  static Serializer<ErrorModel> get serializer => _$errorModelSerializer;
}

abstract class WisherrorModel implements Built<WisherrorModel, WisherrorModelBuilder> {
  @BuiltValueField(wireName: 'success')
  bool get success;
   @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'code')
  String get code;
  @BuiltValueField(wireName: 'error')
  ErrorModel get error;
  
  
 WisherrorModel._();

  factory WisherrorModel([void Function(WisherrorModelBuilder)? updates]) = _$WisherrorModel;
  static Serializer<WisherrorModel> get serializer => _$wisherrorModelSerializer;
}
