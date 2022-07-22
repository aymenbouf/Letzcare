import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:letzcqre/models/patient/relative/built_relative.dart';

part 'built_relative_manipulation.g.dart';


abstract class RelativeresponseModel implements Built<RelativeresponseModel, RelativeresponseModelBuilder> {
  @BuiltValueField(wireName: 'success')
  bool get success;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  RelativedetailsModel? get data;
  
  
 RelativeresponseModel._();

  factory RelativeresponseModel([void Function(RelativeresponseModelBuilder)? updates]) = _$RelativeresponseModel;
  static Serializer<RelativeresponseModel> get serializer => _$relativeresponseModelSerializer;
}






