import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'built_meta.g.dart';

abstract class MetalinkModel implements Built<MetalinkModel, MetalinkModelBuilder> {
  @BuiltValueField(wireName: 'url')
  String get url;
  @BuiltValueField(wireName: 'label')
  String get label;
  @BuiltValueField(wireName: 'active')
  bool get active;
  MetalinkModel._();

  factory MetalinkModel([void Function(MetalinkModelBuilder)? updates]) =
      _$MetalinkModel;
  static Serializer<MetalinkModel> get serializer => _$metalinkModelSerializer;
}


abstract class MetaModel implements Built<MetaModel, MetaModelBuilder> {
  @BuiltValueField(wireName: 'current_page')
  int get current_page;

  @BuiltValueField(wireName: 'from')
  int get from;

  @BuiltValueField(wireName: 'last_page')
  int get last_page;

  @BuiltValueField(wireName: 'links')
  BuiltList<MetalinkModel?> get links;

  @BuiltValueField(wireName: 'path')
  String get path;

  @BuiltValueField(wireName: 'per_page')
  int get per_page;

  @BuiltValueField(wireName: 'to')
  int get to;

  @BuiltValueField(wireName: 'total')
  int get total;
  

  MetaModel._();

  factory MetaModel([void Function(MetaModelBuilder)? updates]) =
      _$MetaModel;
  static Serializer<MetaModel> get serializer => _$metaModelSerializer;
}


