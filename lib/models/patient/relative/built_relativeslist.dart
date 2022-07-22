import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:letzcqre/models/pagination/built_links.dart';
import 'package:letzcqre/models/pagination/built_meta.dart';
import 'package:letzcqre/models/patient/relative/built_relative.dart';

part 'built_relativeslist.g.dart';


abstract class RelativesModel implements Built<RelativesModel, RelativesModelBuilder> {
  @BuiltValueField(wireName: 'data')
  BuiltList<RelativeModel>? get data;
  @BuiltValueField(wireName: 'links')
  LinksModel? get links;
   @BuiltValueField(wireName: 'meta')
  MetaModel? get meta;
  
  
 RelativesModel._();

  factory RelativesModel([void Function(RelativesModelBuilder)? updates]) = _$RelativesModel;
  static Serializer<RelativesModel> get serializer => _$relativesModelSerializer;
}
