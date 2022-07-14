import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:letzcqre/models/office/built_office.dart';
import 'package:letzcqre/models/pagination/built_links.dart';
import 'package:letzcqre/models/pagination/built_meta.dart';

part 'built_my_offices.g.dart';


abstract class MyofficesModel implements Built<MyofficesModel, MyofficesModelBuilder> {
  @BuiltValueField(wireName: 'data')
  OfficesResponse get data;
  @BuiltValueField(wireName: 'links')
  LinksModel get links;
   @BuiltValueField(wireName: 'meta')
  MetaModel get meta;
  
  
  MyofficesModel._();

  factory MyofficesModel([void Function(MyofficesModelBuilder)? updates]) = _$MyofficesModel;
  static Serializer<MyofficesModel> get serializer => _$myofficesModelSerializer;
}
