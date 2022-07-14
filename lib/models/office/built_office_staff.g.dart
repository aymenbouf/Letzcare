// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_office_staff.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OfficestaffModel> _$officestaffModelSerializer =
    new _$OfficestaffModelSerializer();

class _$OfficestaffModelSerializer
    implements StructuredSerializer<OfficestaffModel> {
  @override
  final Iterable<Type> types = const [OfficestaffModel, _$OfficestaffModel];
  @override
  final String wireName = 'OfficestaffModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, OfficestaffModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'staff_id',
      serializers.serialize(object.staff_id,
          specifiedType: const FullType(int)),
      'medical_office_id',
      serializers.serialize(object.medical_office_id,
          specifiedType: const FullType(int)),
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(String)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state, specifiedType: const FullType(int)),
      'is_owner',
      serializers.serialize(object.is_owner,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  OfficestaffModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfficestaffModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'staff_id':
          result.staff_id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'medical_office_id':
          result.medical_office_id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'is_owner':
          result.is_owner = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$OfficestaffModel extends OfficestaffModel {
  @override
  final int staff_id;
  @override
  final int medical_office_id;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final int state;
  @override
  final int is_owner;

  factory _$OfficestaffModel(
          [void Function(OfficestaffModelBuilder)? updates]) =>
      (new OfficestaffModelBuilder()..update(updates))._build();

  _$OfficestaffModel._(
      {required this.staff_id,
      required this.medical_office_id,
      required this.created_at,
      required this.updated_at,
      required this.state,
      required this.is_owner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        staff_id, r'OfficestaffModel', 'staff_id');
    BuiltValueNullFieldError.checkNotNull(
        medical_office_id, r'OfficestaffModel', 'medical_office_id');
    BuiltValueNullFieldError.checkNotNull(
        created_at, r'OfficestaffModel', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, r'OfficestaffModel', 'updated_at');
    BuiltValueNullFieldError.checkNotNull(state, r'OfficestaffModel', 'state');
    BuiltValueNullFieldError.checkNotNull(
        is_owner, r'OfficestaffModel', 'is_owner');
  }

  @override
  OfficestaffModel rebuild(void Function(OfficestaffModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfficestaffModelBuilder toBuilder() =>
      new OfficestaffModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfficestaffModel &&
        staff_id == other.staff_id &&
        medical_office_id == other.medical_office_id &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        state == other.state &&
        is_owner == other.is_owner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, staff_id.hashCode), medical_office_id.hashCode),
                    created_at.hashCode),
                updated_at.hashCode),
            state.hashCode),
        is_owner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OfficestaffModel')
          ..add('staff_id', staff_id)
          ..add('medical_office_id', medical_office_id)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('state', state)
          ..add('is_owner', is_owner))
        .toString();
  }
}

class OfficestaffModelBuilder
    implements Builder<OfficestaffModel, OfficestaffModelBuilder> {
  _$OfficestaffModel? _$v;

  int? _staff_id;
  int? get staff_id => _$this._staff_id;
  set staff_id(int? staff_id) => _$this._staff_id = staff_id;

  int? _medical_office_id;
  int? get medical_office_id => _$this._medical_office_id;
  set medical_office_id(int? medical_office_id) =>
      _$this._medical_office_id = medical_office_id;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  int? _state;
  int? get state => _$this._state;
  set state(int? state) => _$this._state = state;

  int? _is_owner;
  int? get is_owner => _$this._is_owner;
  set is_owner(int? is_owner) => _$this._is_owner = is_owner;

  OfficestaffModelBuilder();

  OfficestaffModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staff_id = $v.staff_id;
      _medical_office_id = $v.medical_office_id;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _state = $v.state;
      _is_owner = $v.is_owner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfficestaffModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OfficestaffModel;
  }

  @override
  void update(void Function(OfficestaffModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OfficestaffModel build() => _build();

  _$OfficestaffModel _build() {
    final _$result = _$v ??
        new _$OfficestaffModel._(
            staff_id: BuiltValueNullFieldError.checkNotNull(
                staff_id, r'OfficestaffModel', 'staff_id'),
            medical_office_id: BuiltValueNullFieldError.checkNotNull(
                medical_office_id, r'OfficestaffModel', 'medical_office_id'),
            created_at: BuiltValueNullFieldError.checkNotNull(
                created_at, r'OfficestaffModel', 'created_at'),
            updated_at: BuiltValueNullFieldError.checkNotNull(
                updated_at, r'OfficestaffModel', 'updated_at'),
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'OfficestaffModel', 'state'),
            is_owner: BuiltValueNullFieldError.checkNotNull(
                is_owner, r'OfficestaffModel', 'is_owner'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
