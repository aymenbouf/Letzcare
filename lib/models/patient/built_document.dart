import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_document.g.dart';


abstract class DocumentModel implements Built<DocumentModel, DocumentModelBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'ext')
  String get ext;
  @BuiltValueField(wireName: 'size')
  String get size;
  @BuiltValueField(wireName: 'full_path')
  String get full_path;
  @BuiltValueField(wireName: 'disk')
  String get disk;
  
  
  
  DocumentModel._();

  factory DocumentModel([void Function(DocumentModelBuilder)? updates]) = _$DocumentModel;
  static Serializer<DocumentModel> get serializer => _$documentModelSerializer;
}

