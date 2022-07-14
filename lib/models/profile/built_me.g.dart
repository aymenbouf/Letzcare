// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_me.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeModel> _$meModelSerializer = new _$MeModelSerializer();

class _$MeModelSerializer implements StructuredSerializer<MeModel> {
  @override
  final Iterable<Type> types = const [MeModel, _$MeModel];
  @override
  final String wireName = 'MeModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
      'staff',
      serializers.serialize(object.staff,
          specifiedType: const FullType(UserModel)),
    ];

    return result;
  }

  @override
  MeModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeModelBuilder();

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
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserModel))! as UserModel);
          break;
      }
    }

    return result.build();
  }
}

class _$MeModel extends MeModel {
  @override
  final bool success;
  @override
  final UserModel staff;

  factory _$MeModel([void Function(MeModelBuilder)? updates]) =>
      (new MeModelBuilder()..update(updates))._build();

  _$MeModel._({required this.success, required this.staff}) : super._() {
    BuiltValueNullFieldError.checkNotNull(success, r'MeModel', 'success');
    BuiltValueNullFieldError.checkNotNull(staff, r'MeModel', 'staff');
  }

  @override
  MeModel rebuild(void Function(MeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeModelBuilder toBuilder() => new MeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeModel && success == other.success && staff == other.staff;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, success.hashCode), staff.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeModel')
          ..add('success', success)
          ..add('staff', staff))
        .toString();
  }
}

class MeModelBuilder implements Builder<MeModel, MeModelBuilder> {
  _$MeModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  UserModelBuilder? _staff;
  UserModelBuilder get staff => _$this._staff ??= new UserModelBuilder();
  set staff(UserModelBuilder? staff) => _$this._staff = staff;

  MeModelBuilder();

  MeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _staff = $v.staff.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeModel;
  }

  @override
  void update(void Function(MeModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeModel build() => _build();

  _$MeModel _build() {
    _$MeModel _$result;
    try {
      _$result = _$v ??
          new _$MeModel._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'MeModel', 'success'),
              staff: staff.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'staff';
        staff.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MeModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
