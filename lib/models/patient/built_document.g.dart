// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_document.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentModel> _$documentModelSerializer =
    new _$DocumentModelSerializer();

class _$DocumentModelSerializer implements StructuredSerializer<DocumentModel> {
  @override
  final Iterable<Type> types = const [DocumentModel, _$DocumentModel];
  @override
  final String wireName = 'DocumentModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, DocumentModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'ext',
      serializers.serialize(object.ext, specifiedType: const FullType(String)),
      'size',
      serializers.serialize(object.size, specifiedType: const FullType(String)),
      'full_path',
      serializers.serialize(object.full_path,
          specifiedType: const FullType(String)),
      'disk',
      serializers.serialize(object.disk, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DocumentModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ext':
          result.ext = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'full_path':
          result.full_path = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'disk':
          result.disk = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DocumentModel extends DocumentModel {
  @override
  final int id;
  @override
  final String name;
  @override
  final String ext;
  @override
  final String size;
  @override
  final String full_path;
  @override
  final String disk;

  factory _$DocumentModel([void Function(DocumentModelBuilder)? updates]) =>
      (new DocumentModelBuilder()..update(updates))._build();

  _$DocumentModel._(
      {required this.id,
      required this.name,
      required this.ext,
      required this.size,
      required this.full_path,
      required this.disk})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'DocumentModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'DocumentModel', 'name');
    BuiltValueNullFieldError.checkNotNull(ext, r'DocumentModel', 'ext');
    BuiltValueNullFieldError.checkNotNull(size, r'DocumentModel', 'size');
    BuiltValueNullFieldError.checkNotNull(
        full_path, r'DocumentModel', 'full_path');
    BuiltValueNullFieldError.checkNotNull(disk, r'DocumentModel', 'disk');
  }

  @override
  DocumentModel rebuild(void Function(DocumentModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentModelBuilder toBuilder() => new DocumentModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentModel &&
        id == other.id &&
        name == other.name &&
        ext == other.ext &&
        size == other.size &&
        full_path == other.full_path &&
        disk == other.disk;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), ext.hashCode),
                size.hashCode),
            full_path.hashCode),
        disk.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocumentModel')
          ..add('id', id)
          ..add('name', name)
          ..add('ext', ext)
          ..add('size', size)
          ..add('full_path', full_path)
          ..add('disk', disk))
        .toString();
  }
}

class DocumentModelBuilder
    implements Builder<DocumentModel, DocumentModelBuilder> {
  _$DocumentModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _ext;
  String? get ext => _$this._ext;
  set ext(String? ext) => _$this._ext = ext;

  String? _size;
  String? get size => _$this._size;
  set size(String? size) => _$this._size = size;

  String? _full_path;
  String? get full_path => _$this._full_path;
  set full_path(String? full_path) => _$this._full_path = full_path;

  String? _disk;
  String? get disk => _$this._disk;
  set disk(String? disk) => _$this._disk = disk;

  DocumentModelBuilder();

  DocumentModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _ext = $v.ext;
      _size = $v.size;
      _full_path = $v.full_path;
      _disk = $v.disk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentModel;
  }

  @override
  void update(void Function(DocumentModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentModel build() => _build();

  _$DocumentModel _build() {
    final _$result = _$v ??
        new _$DocumentModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DocumentModel', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'DocumentModel', 'name'),
            ext: BuiltValueNullFieldError.checkNotNull(
                ext, r'DocumentModel', 'ext'),
            size: BuiltValueNullFieldError.checkNotNull(
                size, r'DocumentModel', 'size'),
            full_path: BuiltValueNullFieldError.checkNotNull(
                full_path, r'DocumentModel', 'full_path'),
            disk: BuiltValueNullFieldError.checkNotNull(
                disk, r'DocumentModel', 'disk'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
