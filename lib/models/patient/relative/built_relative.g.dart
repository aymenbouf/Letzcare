// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_relative.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelativedetailsModel> _$relativedetailsModelSerializer =
    new _$RelativedetailsModelSerializer();
Serializer<RelativeModel> _$relativeModelSerializer =
    new _$RelativeModelSerializer();

class _$RelativedetailsModelSerializer
    implements StructuredSerializer<RelativedetailsModel> {
  @override
  final Iterable<Type> types = const [
    RelativedetailsModel,
    _$RelativedetailsModel
  ];
  @override
  final String wireName = 'RelativedetailsModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RelativedetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'success',
      serializers.serialize(object.success,
          specifiedType: const FullType(bool)),
      'relative',
      serializers.serialize(object.relative,
          specifiedType: const FullType(RelativeModel)),
    ];

    return result;
  }

  @override
  RelativedetailsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelativedetailsModelBuilder();

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
        case 'relative':
          result.relative.replace(serializers.deserialize(value,
              specifiedType: const FullType(RelativeModel))! as RelativeModel);
          break;
      }
    }

    return result.build();
  }
}

class _$RelativeModelSerializer implements StructuredSerializer<RelativeModel> {
  @override
  final Iterable<Type> types = const [RelativeModel, _$RelativeModel];
  @override
  final String wireName = 'RelativeModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, RelativeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'patient_id',
      serializers.serialize(object.patient_id,
          specifiedType: const FullType(int)),
      'first_name',
      serializers.serialize(object.first_name,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.last_name,
          specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'relationship',
      serializers.serialize(object.relationship,
          specifiedType: const FullType(String)),
      'is_contactable_person',
      serializers.serialize(object.is_contactable_person,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.created_at;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updated_at;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RelativeModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelativeModelBuilder();

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
        case 'patient_id':
          result.patient_id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'first_name':
          result.first_name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'last_name':
          result.last_name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'relationship':
          result.relationship = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'is_contactable_person':
          result.is_contactable_person = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$RelativedetailsModel extends RelativedetailsModel {
  @override
  final bool success;
  @override
  final RelativeModel relative;

  factory _$RelativedetailsModel(
          [void Function(RelativedetailsModelBuilder)? updates]) =>
      (new RelativedetailsModelBuilder()..update(updates))._build();

  _$RelativedetailsModel._({required this.success, required this.relative})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'RelativedetailsModel', 'success');
    BuiltValueNullFieldError.checkNotNull(
        relative, r'RelativedetailsModel', 'relative');
  }

  @override
  RelativedetailsModel rebuild(
          void Function(RelativedetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelativedetailsModelBuilder toBuilder() =>
      new RelativedetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelativedetailsModel &&
        success == other.success &&
        relative == other.relative;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, success.hashCode), relative.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelativedetailsModel')
          ..add('success', success)
          ..add('relative', relative))
        .toString();
  }
}

class RelativedetailsModelBuilder
    implements Builder<RelativedetailsModel, RelativedetailsModelBuilder> {
  _$RelativedetailsModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  RelativeModelBuilder? _relative;
  RelativeModelBuilder get relative =>
      _$this._relative ??= new RelativeModelBuilder();
  set relative(RelativeModelBuilder? relative) => _$this._relative = relative;

  RelativedetailsModelBuilder();

  RelativedetailsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _relative = $v.relative.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelativedetailsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RelativedetailsModel;
  }

  @override
  void update(void Function(RelativedetailsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelativedetailsModel build() => _build();

  _$RelativedetailsModel _build() {
    _$RelativedetailsModel _$result;
    try {
      _$result = _$v ??
          new _$RelativedetailsModel._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'RelativedetailsModel', 'success'),
              relative: relative.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'relative';
        relative.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RelativedetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$RelativeModel extends RelativeModel {
  @override
  final int id;
  @override
  final int patient_id;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String phone;
  @override
  final String address;
  @override
  final String email;
  @override
  final String relationship;
  @override
  final int is_contactable_person;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  factory _$RelativeModel([void Function(RelativeModelBuilder)? updates]) =>
      (new RelativeModelBuilder()..update(updates))._build();

  _$RelativeModel._(
      {required this.id,
      required this.patient_id,
      required this.first_name,
      required this.last_name,
      required this.phone,
      required this.address,
      required this.email,
      required this.relationship,
      required this.is_contactable_person,
      this.created_at,
      this.updated_at})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'RelativeModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        patient_id, r'RelativeModel', 'patient_id');
    BuiltValueNullFieldError.checkNotNull(
        first_name, r'RelativeModel', 'first_name');
    BuiltValueNullFieldError.checkNotNull(
        last_name, r'RelativeModel', 'last_name');
    BuiltValueNullFieldError.checkNotNull(phone, r'RelativeModel', 'phone');
    BuiltValueNullFieldError.checkNotNull(address, r'RelativeModel', 'address');
    BuiltValueNullFieldError.checkNotNull(email, r'RelativeModel', 'email');
    BuiltValueNullFieldError.checkNotNull(
        relationship, r'RelativeModel', 'relationship');
    BuiltValueNullFieldError.checkNotNull(
        is_contactable_person, r'RelativeModel', 'is_contactable_person');
  }

  @override
  RelativeModel rebuild(void Function(RelativeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelativeModelBuilder toBuilder() => new RelativeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelativeModel &&
        id == other.id &&
        patient_id == other.patient_id &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        phone == other.phone &&
        address == other.address &&
        email == other.email &&
        relationship == other.relationship &&
        is_contactable_person == other.is_contactable_person &&
        created_at == other.created_at &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            patient_id.hashCode),
                                        first_name.hashCode),
                                    last_name.hashCode),
                                phone.hashCode),
                            address.hashCode),
                        email.hashCode),
                    relationship.hashCode),
                is_contactable_person.hashCode),
            created_at.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelativeModel')
          ..add('id', id)
          ..add('patient_id', patient_id)
          ..add('first_name', first_name)
          ..add('last_name', last_name)
          ..add('phone', phone)
          ..add('address', address)
          ..add('email', email)
          ..add('relationship', relationship)
          ..add('is_contactable_person', is_contactable_person)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class RelativeModelBuilder
    implements Builder<RelativeModel, RelativeModelBuilder> {
  _$RelativeModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _patient_id;
  int? get patient_id => _$this._patient_id;
  set patient_id(int? patient_id) => _$this._patient_id = patient_id;

  String? _first_name;
  String? get first_name => _$this._first_name;
  set first_name(String? first_name) => _$this._first_name = first_name;

  String? _last_name;
  String? get last_name => _$this._last_name;
  set last_name(String? last_name) => _$this._last_name = last_name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _relationship;
  String? get relationship => _$this._relationship;
  set relationship(String? relationship) => _$this._relationship = relationship;

  int? _is_contactable_person;
  int? get is_contactable_person => _$this._is_contactable_person;
  set is_contactable_person(int? is_contactable_person) =>
      _$this._is_contactable_person = is_contactable_person;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  RelativeModelBuilder();

  RelativeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _patient_id = $v.patient_id;
      _first_name = $v.first_name;
      _last_name = $v.last_name;
      _phone = $v.phone;
      _address = $v.address;
      _email = $v.email;
      _relationship = $v.relationship;
      _is_contactable_person = $v.is_contactable_person;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelativeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RelativeModel;
  }

  @override
  void update(void Function(RelativeModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelativeModel build() => _build();

  _$RelativeModel _build() {
    final _$result = _$v ??
        new _$RelativeModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'RelativeModel', 'id'),
            patient_id: BuiltValueNullFieldError.checkNotNull(
                patient_id, r'RelativeModel', 'patient_id'),
            first_name: BuiltValueNullFieldError.checkNotNull(
                first_name, r'RelativeModel', 'first_name'),
            last_name: BuiltValueNullFieldError.checkNotNull(
                last_name, r'RelativeModel', 'last_name'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'RelativeModel', 'phone'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'RelativeModel', 'address'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'RelativeModel', 'email'),
            relationship: BuiltValueNullFieldError.checkNotNull(
                relationship, r'RelativeModel', 'relationship'),
            is_contactable_person: BuiltValueNullFieldError.checkNotNull(
                is_contactable_person,
                r'RelativeModel',
                'is_contactable_person'),
            created_at: created_at,
            updated_at: updated_at);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
