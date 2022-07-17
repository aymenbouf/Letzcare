
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'built_logout.g.dart';


abstract class LogoutModel implements Built<LogoutModel, LogoutModelBuilder> {
 
  @BuiltValueField(wireName: 'success')
  bool get success;
  @BuiltValueField(wireName: 'message')
  String? get message;
  @BuiltValueField(wireName: 'data')
  String? get data;

  LogoutModel._();

  factory LogoutModel([void Function(LogoutModelBuilder)? updates]) = _$LogoutModel;
  static Serializer<LogoutModel> get serializer => _$logoutModelSerializer;
}
