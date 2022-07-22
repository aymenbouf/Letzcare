// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_wish_manipulation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WishresponseModel> _$wishresponseModelSerializer =
    new _$WishresponseModelSerializer();

class _$WishresponseModelSerializer
    implements StructuredSerializer<WishresponseModel> {
  @override
  final Iterable<Type> types = const [WishresponseModel, _$WishresponseModel];
  @override
  final String wireName = 'WishresponseModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WishresponseModel object,
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
            specifiedType: const FullType(LifewishdetailsModel)));
    }
    return result;
  }

  @override
  WishresponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WishresponseModelBuilder();

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
                  specifiedType: const FullType(LifewishdetailsModel))!
              as LifewishdetailsModel);
          break;
      }
    }

    return result.build();
  }
}

class _$WishresponseModel extends WishresponseModel {
  @override
  final bool success;
  @override
  final String message;
  @override
  final LifewishdetailsModel? data;

  factory _$WishresponseModel(
          [void Function(WishresponseModelBuilder)? updates]) =>
      (new WishresponseModelBuilder()..update(updates))._build();

  _$WishresponseModel._(
      {required this.success, required this.message, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'WishresponseModel', 'success');
    BuiltValueNullFieldError.checkNotNull(
        message, r'WishresponseModel', 'message');
  }

  @override
  WishresponseModel rebuild(void Function(WishresponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WishresponseModelBuilder toBuilder() =>
      new WishresponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WishresponseModel &&
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
    return (newBuiltValueToStringHelper(r'WishresponseModel')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class WishresponseModelBuilder
    implements Builder<WishresponseModel, WishresponseModelBuilder> {
  _$WishresponseModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  LifewishdetailsModelBuilder? _data;
  LifewishdetailsModelBuilder get data =>
      _$this._data ??= new LifewishdetailsModelBuilder();
  set data(LifewishdetailsModelBuilder? data) => _$this._data = data;

  WishresponseModelBuilder();

  WishresponseModelBuilder get _$this {
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
  void replace(WishresponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WishresponseModel;
  }

  @override
  void update(void Function(WishresponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WishresponseModel build() => _build();

  _$WishresponseModel _build() {
    _$WishresponseModel _$result;
    try {
      _$result = _$v ??
          new _$WishresponseModel._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'WishresponseModel', 'success'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'WishresponseModel', 'message'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WishresponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
