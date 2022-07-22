import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_lifewish.g.dart';


abstract class LifewishModel implements Built<LifewishModel, LifewishModelBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'ntbr')
  int get ntbr;
  
  
  LifewishModel._();

  factory LifewishModel([void Function(LifewishModelBuilder)? updates]) = _$LifewishModel;
  static Serializer<LifewishModel> get serializer => _$lifewishModelSerializer;
}

abstract class LifewishdetailsModel implements Built<LifewishdetailsModel, LifewishdetailsModelBuilder> {
  @BuiltValueField(wireName: 'success')
  bool get success;
  @BuiltValueField(wireName: 'wish_life')
  LifewishModel get wish_life;
  
  
  LifewishdetailsModel._();

  factory LifewishdetailsModel([void Function(LifewishdetailsModelBuilder)? updates]) = _$LifewishdetailsModel;
  static Serializer<LifewishdetailsModel> get serializer => _$lifewishdetailsModelSerializer;
}
