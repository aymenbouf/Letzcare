// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_relative_manipulation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelativeresponseModel> _$relativeresponseModelSerializer =
    new _$RelativeresponseModelSerializer();

class _$RelativeresponseModelSerializer
    implements StructuredSerializer<RelativeresponseModel> {
  @override
  final Iterable<Type> types = const [
    RelativeresponseModel,
    _$RelativeresponseModel
  ];
  @override
  final String wireName = 'RelativeresponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RelativeresponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(RelativedetailsModel)));
    }
    return result;
  }

  @override
  RelativeresponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelativeresponseModelBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RelativedetailsModel))!
              as RelativedetailsModel);
          break;
      }
    }

    return result.build();
  }
}

class _$RelativeresponseModel extends RelativeresponseModel {
  @override
  final bool success;
  @override
  final String message;
  @override
  final RelativedetailsModel? data;

  factory _$RelativeresponseModel(
          [void Function(RelativeresponseModelBuilder)? updates]) =>
      (new RelativeresponseModelBuilder()..update(updates))._build();

  _$RelativeresponseModel._(
      {required this.success, required this.message, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'RelativeresponseModel', 'success');
    BuiltValueNullFieldError.checkNotNull(
        message, r'RelativeresponseModel', 'message');
  }

  @override
  RelativeresponseModel rebuild(
          void Function(RelativeresponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelativeresponseModelBuilder toBuilder() =>
      new RelativeresponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelativeresponseModel &&
        success == other.success &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, success.hashCode), message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelativeresponseModel')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class RelativeresponseModelBuilder
    implements Builder<RelativeresponseModel, RelativeresponseModelBuilder> {
  _$RelativeresponseModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  RelativedetailsModelBuilder? _data;
  RelativedetailsModelBuilder get data =>
      _$this._data ??= new RelativedetailsModelBuilder();
  set data(RelativedetailsModelBuilder? data) => _$this._data = data;

  RelativeresponseModelBuilder();

  RelativeresponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelativeresponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RelativeresponseModel;
  }

  @override
  void update(void Function(RelativeresponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelativeresponseModel build() => _build();

  _$RelativeresponseModel _build() {
    _$RelativeresponseModel _$result;
    try {
      _$result = _$v ??
          new _$RelativeresponseModel._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'RelativeresponseModel', 'success'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'RelativeresponseModel', 'message'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RelativeresponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
