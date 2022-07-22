// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_wish_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ErrorModel> _$errorModelSerializer = new _$ErrorModelSerializer();
Serializer<WisherrorModel> _$wisherrorModelSerializer =
    new _$WisherrorModelSerializer();

class _$ErrorModelSerializer implements StructuredSerializer<ErrorModel> {
  @override
  final Iterable<Type> types = const [ErrorModel, _$ErrorModel];
  @override
  final String wireName = 'ErrorModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ErrorModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'status-code',
      serializers.serialize(object.status_code,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ErrorModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ErrorModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status-code':
          result.status_code = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$WisherrorModelSerializer
    implements StructuredSerializer<WisherrorModel> {
  @override
  final Iterable<Type> types = const [WisherrorModel, _$WisherrorModel];
  @override
  final String wireName = 'WisherrorModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WisherrorModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(ErrorModel)),
    ];

    return result;
  }

  @override
  WisherrorModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WisherrorModelBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error.replace(serializers.deserialize(value,
              specifiedType: const FullType(ErrorModel))! as ErrorModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ErrorModel extends ErrorModel {
  @override
  final String type;
  @override
  final String description;
  @override
  final String version;
  @override
  final int status_code;

  factory _$ErrorModel([void Function(ErrorModelBuilder)? updates]) =>
      (new ErrorModelBuilder()..update(updates))._build();

  _$ErrorModel._(
      {required this.type,
      required this.description,
      required this.version,
      required this.status_code})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'ErrorModel', 'type');
    BuiltValueNullFieldError.checkNotNull(
        description, r'ErrorModel', 'description');
    BuiltValueNullFieldError.checkNotNull(version, r'ErrorModel', 'version');
    BuiltValueNullFieldError.checkNotNull(
        status_code, r'ErrorModel', 'status_code');
  }

  @override
  ErrorModel rebuild(void Function(ErrorModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorModelBuilder toBuilder() => new ErrorModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorModel &&
        type == other.type &&
        description == other.description &&
        version == other.version &&
        status_code == other.status_code;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, type.hashCode), description.hashCode), version.hashCode),
        status_code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorModel')
          ..add('type', type)
          ..add('description', description)
          ..add('version', version)
          ..add('status_code', status_code))
        .toString();
  }
}

class ErrorModelBuilder implements Builder<ErrorModel, ErrorModelBuilder> {
  _$ErrorModel? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  int? _status_code;
  int? get status_code => _$this._status_code;
  set status_code(int? status_code) => _$this._status_code = status_code;

  ErrorModelBuilder();

  ErrorModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _description = $v.description;
      _version = $v.version;
      _status_code = $v.status_code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorModel;
  }

  @override
  void update(void Function(ErrorModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorModel build() => _build();

  _$ErrorModel _build() {
    final _$result = _$v ??
        new _$ErrorModel._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'ErrorModel', 'type'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'ErrorModel', 'description'),
            version: BuiltValueNullFieldError.checkNotNull(
                version, r'ErrorModel', 'version'),
            status_code: BuiltValueNullFieldError.checkNotNull(
                status_code, r'ErrorModel', 'status_code'));
    replace(_$result);
    return _$result;
  }
}

class _$WisherrorModel extends WisherrorModel {
  @override
  final bool success;
  @override
  final String message;
  @override
  final String code;
  @override
  final ErrorModel error;

  factory _$WisherrorModel([void Function(WisherrorModelBuilder)? updates]) =>
      (new WisherrorModelBuilder()..update(updates))._build();

  _$WisherrorModel._(
      {required this.success,
      required this.message,
      required this.code,
      required this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'WisherrorModel', 'success');
    BuiltValueNullFieldError.checkNotNull(
        message, r'WisherrorModel', 'message');
    BuiltValueNullFieldError.checkNotNull(code, r'WisherrorModel', 'code');
    BuiltValueNullFieldError.checkNotNull(error, r'WisherrorModel', 'error');
  }

  @override
  WisherrorModel rebuild(void Function(WisherrorModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WisherrorModelBuilder toBuilder() =>
      new WisherrorModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WisherrorModel &&
        success == other.success &&
        message == other.message &&
        code == other.code &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, success.hashCode), message.hashCode), code.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WisherrorModel')
          ..add('success', success)
          ..add('message', message)
          ..add('code', code)
          ..add('error', error))
        .toString();
  }
}

class WisherrorModelBuilder
    implements Builder<WisherrorModel, WisherrorModelBuilder> {
  _$WisherrorModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ErrorModelBuilder? _error;
  ErrorModelBuilder get error => _$this._error ??= new ErrorModelBuilder();
  set error(ErrorModelBuilder? error) => _$this._error = error;

  WisherrorModelBuilder();

  WisherrorModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _code = $v.code;
      _error = $v.error.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WisherrorModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WisherrorModel;
  }

  @override
  void update(void Function(WisherrorModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WisherrorModel build() => _build();

  _$WisherrorModel _build() {
    _$WisherrorModel _$result;
    try {
      _$result = _$v ??
          new _$WisherrorModel._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'WisherrorModel', 'success'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'WisherrorModel', 'message'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'WisherrorModel', 'code'),
              error: error.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        error.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WisherrorModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
