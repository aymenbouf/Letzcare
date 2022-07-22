// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_relativeslist.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelativesModel> _$relativesModelSerializer =
    new _$RelativesModelSerializer();

class _$RelativesModelSerializer
    implements StructuredSerializer<RelativesModel> {
  @override
  final Iterable<Type> types = const [RelativesModel, _$RelativesModel];
  @override
  final String wireName = 'RelativesModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, RelativesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RelativeModel)])));
    }
    value = object.links;
    if (value != null) {
      result
        ..add('links')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LinksModel)));
    }
    value = object.meta;
    if (value != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(MetaModel)));
    }
    return result;
  }

  @override
  RelativesModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelativesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RelativeModel)]))!
              as BuiltList<Object?>);
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

class _$RelativesModel extends RelativesModel {
  @override
  final BuiltList<RelativeModel>? data;
  @override
  final LinksModel? links;
  @override
  final MetaModel? meta;

  factory _$RelativesModel([void Function(RelativesModelBuilder)? updates]) =>
      (new RelativesModelBuilder()..update(updates))._build();

  _$RelativesModel._({this.data, this.links, this.meta}) : super._();

  @override
  RelativesModel rebuild(void Function(RelativesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelativesModelBuilder toBuilder() =>
      new RelativesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelativesModel &&
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
    return (newBuiltValueToStringHelper(r'RelativesModel')
          ..add('data', data)
          ..add('links', links)
          ..add('meta', meta))
        .toString();
  }
}

class RelativesModelBuilder
    implements Builder<RelativesModel, RelativesModelBuilder> {
  _$RelativesModel? _$v;

  ListBuilder<RelativeModel>? _data;
  ListBuilder<RelativeModel> get data =>
      _$this._data ??= new ListBuilder<RelativeModel>();
  set data(ListBuilder<RelativeModel>? data) => _$this._data = data;

  LinksModelBuilder? _links;
  LinksModelBuilder get links => _$this._links ??= new LinksModelBuilder();
  set links(LinksModelBuilder? links) => _$this._links = links;

  MetaModelBuilder? _meta;
  MetaModelBuilder get meta => _$this._meta ??= new MetaModelBuilder();
  set meta(MetaModelBuilder? meta) => _$this._meta = meta;

  RelativesModelBuilder();

  RelativesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _links = $v.links?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelativesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RelativesModel;
  }

  @override
  void update(void Function(RelativesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelativesModel build() => _build();

  _$RelativesModel _build() {
    _$RelativesModel _$result;
    try {
      _$result = _$v ??
          new _$RelativesModel._(
              data: _data?.build(),
              links: _links?.build(),
              meta: _meta?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RelativesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
