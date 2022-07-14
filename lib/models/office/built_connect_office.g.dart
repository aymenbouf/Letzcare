// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_connect_office.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataModel> _$dataModelSerializer = new _$DataModelSerializer();
Serializer<OfficeConnectionResponse> _$officeConnectionResponseSerializer =
    new _$OfficeConnectionResponseSerializer();

class _$DataModelSerializer implements StructuredSerializer<DataModel> {
  @override
  final Iterable<Type> types = const [DataModel, _$DataModel];
  @override
  final String wireName = 'DataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'staff',
      serializers.serialize(object.staff,
          specifiedType: const FullType(UserModel)),
    ];

    return result;
  }

  @override
  DataModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserModel))! as UserModel);
          break;
      }
    }

    return result.build();
  }
}

class _$OfficeConnectionResponseSerializer
    implements StructuredSerializer<OfficeConnectionResponse> {
  @override
  final Iterable<Type> types = const [
    OfficeConnectionResponse,
    _$OfficeConnectionResponse
  ];
  @override
  final String wireName = 'OfficeConnectionResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OfficeConnectionResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataModel)),
    ];

    return result;
  }

  @override
  OfficeConnectionResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfficeConnectionResponseBuilder();

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
              specifiedType: const FullType(DataModel))! as DataModel);
          break;
      }
    }

    return result.build();
  }
}

class _$DataModel extends DataModel {
  @override
  final UserModel staff;

  factory _$DataModel([void Function(DataModelBuilder)? updates]) =>
      (new DataModelBuilder()..update(updates))._build();

  _$DataModel._({required this.staff}) : super._() {
    BuiltValueNullFieldError.checkNotNull(staff, r'DataModel', 'staff');
  }

  @override
  DataModel rebuild(void Function(DataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataModelBuilder toBuilder() => new DataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataModel && staff == other.staff;
  }

  @override
  int get hashCode {
    return $jf($jc(0, staff.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataModel')..add('staff', staff))
        .toString();
  }
}

class DataModelBuilder implements Builder<DataModel, DataModelBuilder> {
  _$DataModel? _$v;

  UserModelBuilder? _staff;
  UserModelBuilder get staff => _$this._staff ??= new UserModelBuilder();
  set staff(UserModelBuilder? staff) => _$this._staff = staff;

  DataModelBuilder();

  DataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staff = $v.staff.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataModel;
  }

  @override
  void update(void Function(DataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataModel build() => _build();

  _$DataModel _build() {
    _$DataModel _$result;
    try {
      _$result = _$v ?? new _$DataModel._(staff: staff.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'staff';
        staff.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OfficeConnectionResponse extends OfficeConnectionResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final DataModel data;

  factory _$OfficeConnectionResponse(
          [void Function(OfficeConnectionResponseBuilder)? updates]) =>
      (new OfficeConnectionResponseBuilder()..update(updates))._build();

  _$OfficeConnectionResponse._(
      {required this.success, required this.message, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'OfficeConnectionResponse', 'success');
    BuiltValueNullFieldError.checkNotNull(
        message, r'OfficeConnectionResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, r'OfficeConnectionResponse', 'data');
  }

  @override
  OfficeConnectionResponse rebuild(
          void Function(OfficeConnectionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfficeConnectionResponseBuilder toBuilder() =>
      new OfficeConnectionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfficeConnectionResponse &&
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
    return (newBuiltValueToStringHelper(r'OfficeConnectionResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class OfficeConnectionResponseBuilder
    implements
        Builder<OfficeConnectionResponse, OfficeConnectionResponseBuilder> {
  _$OfficeConnectionResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DataModelBuilder? _data;
  DataModelBuilder get data => _$this._data ??= new DataModelBuilder();
  set data(DataModelBuilder? data) => _$this._data = data;

  OfficeConnectionResponseBuilder();

  OfficeConnectionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfficeConnectionResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OfficeConnectionResponse;
  }

  @override
  void update(void Function(OfficeConnectionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OfficeConnectionResponse build() => _build();

  _$OfficeConnectionResponse _build() {
    _$OfficeConnectionResponse _$result;
    try {
      _$result = _$v ??
          new _$OfficeConnectionResponse._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'OfficeConnectionResponse', 'success'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'OfficeConnectionResponse', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OfficeConnectionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
