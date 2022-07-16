import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'built_links.g.dart';

abstract class LinksModel implements Built<LinksModel, LinksModelBuilder> {
  @BuiltValueField(wireName: 'first')
  String? get first;
  @BuiltValueField(wireName: 'last')
  String? get last;
  @BuiltValueField(wireName: 'prev')
  String? get prev;
  @BuiltValueField(wireName: 'next')
  String? get next;

  LinksModel._();

  factory LinksModel([void Function(LinksModelBuilder)? updates]) =
      _$LinksModel;
  static Serializer<LinksModel> get serializer => _$linksModelSerializer;
}
