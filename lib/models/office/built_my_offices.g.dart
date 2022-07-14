// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_my_offices.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyofficesModel> _$myofficesModelSerializer =
    new _$MyofficesModelSerializer();

class _$MyofficesModelSerializer
    implements StructuredSerializer<MyofficesModel> {
  @override
  final Iterable<Type> types = const [MyofficesModel, _$MyofficesModel];
  @override
  final String wireName = 'MyofficesModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyofficesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(OfficesResponse)),
      'links',
      serializers.serialize(object.links,
          specifiedType: const FullType(LinksModel)),
      'meta',
      serializers.serialize(object.meta,
          specifiedType: const FullType(MetaModel)),
    ];

    return result;
  }

  @override
  MyofficesModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyofficesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OfficesResponse))!
              as OfficesResponse);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(LinksModel))! as LinksModel);
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(MetaModel))! as MetaModel);
          break;
      }
    }

    return result.build();
  }
}

class _$MyofficesModel extends MyofficesModel {
  @override
  final OfficesResponse data;
  @override
  final LinksModel links;
  @override
  final MetaModel meta;

  factory _$MyofficesModel([void Function(MyofficesModelBuilder)? updates]) =>
      (new MyofficesModelBuilder()..update(updates))._build();

  _$MyofficesModel._(
      {required this.data, required this.links, required this.meta})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'MyofficesModel', 'data');
    BuiltValueNullFieldError.checkNotNull(links, r'MyofficesModel', 'links');
    BuiltValueNullFieldError.checkNotNull(meta, r'MyofficesModel', 'meta');
  }

  @override
  MyofficesModel rebuild(void Function(MyofficesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyofficesModelBuilder toBuilder() =>
      new MyofficesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyofficesModel &&
        data == other.data &&
        links == other.links &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, data.hashCode), links.hashCode), meta.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyofficesModel')
          ..add('data', data)
          ..add('links', links)
          ..add('meta', meta))
        .toString();
  }
}

class MyofficesModelBuilder
    implements Builder<MyofficesModel, MyofficesModelBuilder> {
  _$MyofficesModel? _$v;

  OfficesResponseBuilder? _data;
  OfficesResponseBuilder get data =>
      _$this._data ??= new OfficesResponseBuilder();
  set data(OfficesResponseBuilder? data) => _$this._data = data;

  LinksModelBuilder? _links;
  LinksModelBuilder get links => _$this._links ??= new LinksModelBuilder();
  set links(LinksModelBuilder? links) => _$this._links = links;

  MetaModelBuilder? _meta;
  MetaModelBuilder get meta => _$this._meta ??= new MetaModelBuilder();
  set meta(MetaModelBuilder? meta) => _$this._meta = meta;

  MyofficesModelBuilder();

  MyofficesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _links = $v.links.toBuilder();
      _meta = $v.meta.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyofficesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyofficesModel;
  }

  @override
  void update(void Function(MyofficesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyofficesModel build() => _build();

  _$MyofficesModel _build() {
    _$MyofficesModel _$result;
    try {
      _$result = _$v ??
          new _$MyofficesModel._(
              data: data.build(), links: links.build(), meta: meta.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'links';
        links.build();
        _$failedField = 'meta';
        meta.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MyofficesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
