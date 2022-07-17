// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserModel> _$userModelSerializer = new _$UserModelSerializer();

class _$UserModelSerializer implements StructuredSerializer<UserModel> {
  @override
  final Iterable<Type> types = const [UserModel, _$UserModel];
  @override
  final String wireName = 'UserModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'first_name',
      serializers.serialize(object.first_name,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.last_name,
          specifiedType: const FullType(String)),
      'personal_number',
      serializers.serialize(object.personal_number,
          specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'position_held',
      serializers.serialize(object.position_held,
          specifiedType: const FullType(String)),
      'occupation',
      serializers.serialize(object.occupation,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.medical_office_id;
    if (value != null) {
      result
        ..add('medical_office_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email_verified_at;
    if (value != null) {
      result
        ..add('email_verified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.office;
    if (value != null) {
      result
        ..add('office')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(OfficeModel)));
    }
    return result;
  }

  @override
  UserModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserModelBuilder();

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
        case 'medical_office_id':
          result.medical_office_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_name':
          result.first_name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'last_name':
          result.last_name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'personal_number':
          result.personal_number = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'position_held':
          result.position_held = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'occupation':
          result.occupation = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email_verified_at':
          result.email_verified_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'office':
          result.office.replace(serializers.deserialize(value,
              specifiedType: const FullType(OfficeModel))! as OfficeModel);
          break;
      }
    }

    return result.build();
  }
}

class _$UserModel extends UserModel {
  @override
  final int id;
  @override
  final String? medical_office_id;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String personal_number;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String position_held;
  @override
  final String occupation;
  @override
  final String? image;
  @override
  final String? email_verified_at;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? name;
  @override
  final OfficeModel? office;

  factory _$UserModel([void Function(UserModelBuilder)? updates]) =>
      (new UserModelBuilder()..update(updates))._build();

  _$UserModel._(
      {required this.id,
      this.medical_office_id,
      required this.first_name,
      required this.last_name,
      required this.personal_number,
      required this.phone,
      required this.email,
      required this.position_held,
      required this.occupation,
      this.image,
      this.email_verified_at,
      this.created_at,
      this.updated_at,
      this.name,
      this.office})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'UserModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        first_name, r'UserModel', 'first_name');
    BuiltValueNullFieldError.checkNotNull(last_name, r'UserModel', 'last_name');
    BuiltValueNullFieldError.checkNotNull(
        personal_number, r'UserModel', 'personal_number');
    BuiltValueNullFieldError.checkNotNull(phone, r'UserModel', 'phone');
    BuiltValueNullFieldError.checkNotNull(email, r'UserModel', 'email');
    BuiltValueNullFieldError.checkNotNull(
        position_held, r'UserModel', 'position_held');
    BuiltValueNullFieldError.checkNotNull(
        occupation, r'UserModel', 'occupation');
  }

  @override
  UserModel rebuild(void Function(UserModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserModelBuilder toBuilder() => new UserModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserModel &&
        id == other.id &&
        medical_office_id == other.medical_office_id &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        personal_number == other.personal_number &&
        phone == other.phone &&
        email == other.email &&
        position_held == other.position_held &&
        occupation == other.occupation &&
        image == other.image &&
        email_verified_at == other.email_verified_at &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        name == other.name &&
        office == other.office;
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0, id.hashCode),
                                                            medical_office_id
                                                                .hashCode),
                                                        first_name.hashCode),
                                                    last_name.hashCode),
                                                personal_number.hashCode),
                                            phone.hashCode),
                                        email.hashCode),
                                    position_held.hashCode),
                                occupation.hashCode),
                            image.hashCode),
                        email_verified_at.hashCode),
                    created_at.hashCode),
                updated_at.hashCode),
            name.hashCode),
        office.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserModel')
          ..add('id', id)
          ..add('medical_office_id', medical_office_id)
          ..add('first_name', first_name)
          ..add('last_name', last_name)
          ..add('personal_number', personal_number)
          ..add('phone', phone)
          ..add('email', email)
          ..add('position_held', position_held)
          ..add('occupation', occupation)
          ..add('image', image)
          ..add('email_verified_at', email_verified_at)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('name', name)
          ..add('office', office))
        .toString();
  }
}

class UserModelBuilder implements Builder<UserModel, UserModelBuilder> {
  _$UserModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _medical_office_id;
  String? get medical_office_id => _$this._medical_office_id;
  set medical_office_id(String? medical_office_id) =>
      _$this._medical_office_id = medical_office_id;

  String? _first_name;
  String? get first_name => _$this._first_name;
  set first_name(String? first_name) => _$this._first_name = first_name;

  String? _last_name;
  String? get last_name => _$this._last_name;
  set last_name(String? last_name) => _$this._last_name = last_name;

  String? _personal_number;
  String? get personal_number => _$this._personal_number;
  set personal_number(String? personal_number) =>
      _$this._personal_number = personal_number;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _position_held;
  String? get position_held => _$this._position_held;
  set position_held(String? position_held) =>
      _$this._position_held = position_held;

  String? _occupation;
  String? get occupation => _$this._occupation;
  set occupation(String? occupation) => _$this._occupation = occupation;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _email_verified_at;
  String? get email_verified_at => _$this._email_verified_at;
  set email_verified_at(String? email_verified_at) =>
      _$this._email_verified_at = email_verified_at;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  OfficeModelBuilder? _office;
  OfficeModelBuilder get office => _$this._office ??= new OfficeModelBuilder();
  set office(OfficeModelBuilder? office) => _$this._office = office;

  UserModelBuilder();

  UserModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _medical_office_id = $v.medical_office_id;
      _first_name = $v.first_name;
      _last_name = $v.last_name;
      _personal_number = $v.personal_number;
      _phone = $v.phone;
      _email = $v.email;
      _position_held = $v.position_held;
      _occupation = $v.occupation;
      _image = $v.image;
      _email_verified_at = $v.email_verified_at;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _name = $v.name;
      _office = $v.office?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserModel;
  }

  @override
  void update(void Function(UserModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserModel build() => _build();

  _$UserModel _build() {
    _$UserModel _$result;
    try {
      _$result = _$v ??
          new _$UserModel._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'UserModel', 'id'),
              medical_office_id: medical_office_id,
              first_name: BuiltValueNullFieldError.checkNotNull(
                  first_name, r'UserModel', 'first_name'),
              last_name: BuiltValueNullFieldError.checkNotNull(
                  last_name, r'UserModel', 'last_name'),
              personal_number: BuiltValueNullFieldError.checkNotNull(
                  personal_number, r'UserModel', 'personal_number'),
              phone: BuiltValueNullFieldError.checkNotNull(
                  phone, r'UserModel', 'phone'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'UserModel', 'email'),
              position_held: BuiltValueNullFieldError.checkNotNull(
                  position_held, r'UserModel', 'position_held'),
              occupation: BuiltValueNullFieldError.checkNotNull(
                  occupation, r'UserModel', 'occupation'),
              image: image,
              email_verified_at: email_verified_at,
              created_at: created_at,
              updated_at: updated_at,
              name: name,
              office: _office?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'office';
        _office?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
