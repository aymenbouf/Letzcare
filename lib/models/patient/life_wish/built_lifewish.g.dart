// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_lifewish.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LifewishModel> _$lifewishModelSerializer =
    new _$LifewishModelSerializer();
Serializer<LifewishdetailsModel> _$lifewishdetailsModelSerializer =
    new _$LifewishdetailsModelSerializer();

class _$LifewishModelSerializer implements StructuredSerializer<LifewishModel> {
  @override
  final Iterable<Type> types = const [LifewishModel, _$LifewishModel];
  @override
  final String wireName = 'LifewishModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LifewishModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'ntbr',
      serializers.serialize(object.ntbr, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  LifewishModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LifewishModelBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ntbr':
          result.ntbr = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LifewishdetailsModelSerializer
    implements StructuredSerializer<LifewishdetailsModel> {
  @override
  final Iterable<Type> types = const [
    LifewishdetailsModel,
    _$LifewishdetailsModel
  ];
  @override
  final String wireName = 'LifewishdetailsModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LifewishdetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
      'wish_life',
      serializers.serialize(object.wish_life,
          specifiedType: const FullType(LifewishModel)),
    ];

    return result;
  }

  @override
  LifewishdetailsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LifewishdetailsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'wish_life':
          result.wish_life.replace(serializers.deserialize(value,
              specifiedType: const FullType(LifewishModel))! as LifewishModel);
          break;
      }
    }

    return result.build();
  }
}

class _$LifewishModel extends LifewishModel {
  @override
  final int id;
  @override
  final String description;
  @override
  final int ntbr;

  factory _$LifewishModel([void Function(LifewishModelBuilder)? updates]) =>
      (new LifewishModelBuilder()..update(updates))._build();

  _$LifewishModel._(
      {required this.id, required this.description, required this.ntbr})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'LifewishModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        description, r'LifewishModel', 'description');
    BuiltValueNullFieldError.checkNotNull(ntbr, r'LifewishModel', 'ntbr');
  }

  @override
  LifewishModel rebuild(void Function(LifewishModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LifewishModelBuilder toBuilder() => new LifewishModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LifewishModel &&
        id == other.id &&
        description == other.description &&
        ntbr == other.ntbr;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), description.hashCode), ntbr.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LifewishModel')
          ..add('id', id)
          ..add('description', description)
          ..add('ntbr', ntbr))
        .toString();
  }
}

class LifewishModelBuilder
    implements Builder<LifewishModel, LifewishModelBuilder> {
  _$LifewishModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _ntbr;
  int? get ntbr => _$this._ntbr;
  set ntbr(int? ntbr) => _$this._ntbr = ntbr;

  LifewishModelBuilder();

  LifewishModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _ntbr = $v.ntbr;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LifewishModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LifewishModel;
  }

  @override
  void update(void Function(LifewishModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LifewishModel build() => _build();

  _$LifewishModel _build() {
    final _$result = _$v ??
        new _$LifewishModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'LifewishModel', 'id'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'LifewishModel', 'description'),
            ntbr: BuiltValueNullFieldError.checkNotNull(
                ntbr, r'LifewishModel', 'ntbr'));
    replace(_$result);
    return _$result;
  }
}

class _$LifewishdetailsModel extends LifewishdetailsModel {
  @override
  final bool success;
  @override
  final LifewishModel wish_life;

  factory _$LifewishdetailsModel(
          [void Function(LifewishdetailsModelBuilder)? updates]) =>
      (new LifewishdetailsModelBuilder()..update(updates))._build();

  _$LifewishdetailsModel._({required this.success, required this.wish_life})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'LifewishdetailsModel', 'success');
    BuiltValueNullFieldError.checkNotNull(
        wish_life, r'LifewishdetailsModel', 'wish_life');
  }

  @override
  LifewishdetailsModel rebuild(
          void Function(LifewishdetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LifewishdetailsModelBuilder toBuilder() =>
      new LifewishdetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LifewishdetailsModel &&
        success == other.success &&
        wish_life == other.wish_life;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, success.hashCode), wish_life.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LifewishdetailsModel')
          ..add('success', success)
          ..add('wish_life', wish_life))
        .toString();
  }
}

class LifewishdetailsModelBuilder
    implements Builder<LifewishdetailsModel, LifewishdetailsModelBuilder> {
  _$LifewishdetailsModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  LifewishModelBuilder? _wish_life;
  LifewishModelBuilder get wish_life =>
      _$this._wish_life ??= new LifewishModelBuilder();
  set wish_life(LifewishModelBuilder? wish_life) =>
      _$this._wish_life = wish_life;

  LifewishdetailsModelBuilder();

  LifewishdetailsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _wish_life = $v.wish_life.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LifewishdetailsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LifewishdetailsModel;
  }

  @override
  void update(void Function(LifewishdetailsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LifewishdetailsModel build() => _build();

  _$LifewishdetailsModel _build() {
    _$LifewishdetailsModel _$result;
    try {
      _$result = _$v ??
          new _$LifewishdetailsModel._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'LifewishdetailsModel', 'success'),
              wish_life: wish_life.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'wish_life';
        wish_life.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LifewishdetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
