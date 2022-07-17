// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_logout.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LogoutModel> _$logoutModelSerializer = new _$LogoutModelSerializer();

class _$LogoutModelSerializer implements StructuredSerializer<LogoutModel> {
  @override
  final Iterable<Type> types = const [LogoutModel, _$LogoutModel];
  @override
  final String wireName = 'LogoutModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LogoutModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LogoutModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogoutModelBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LogoutModel extends LogoutModel {
  @override
  final bool success;
  @override
  final String? message;
  @override
  final String? data;

  factory _$LogoutModel([void Function(LogoutModelBuilder)? updates]) =>
      (new LogoutModelBuilder()..update(updates))._build();

  _$LogoutModel._({required this.success, this.message, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, r'LogoutModel', 'success');
  }

  @override
  LogoutModel rebuild(void Function(LogoutModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogoutModelBuilder toBuilder() => new LogoutModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogoutModel &&
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
    return (newBuiltValueToStringHelper(r'LogoutModel')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class LogoutModelBuilder implements Builder<LogoutModel, LogoutModelBuilder> {
  _$LogoutModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  LogoutModelBuilder();

  LogoutModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogoutModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogoutModel;
  }

  @override
  void update(void Function(LogoutModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogoutModel build() => _build();

  _$LogoutModel _build() {
    final _$result = _$v ??
        new _$LogoutModel._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'LogoutModel', 'success'),
            message: message,
            data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
