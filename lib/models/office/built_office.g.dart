// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_office.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OfficesResponse> _$officesResponseSerializer =
    new _$OfficesResponseSerializer();
Serializer<OfficeModel> _$officeModelSerializer = new _$OfficeModelSerializer();

class _$OfficesResponseSerializer
    implements StructuredSerializer<OfficesResponse> {
  @override
  final Iterable<Type> types = const [OfficesResponse, _$OfficesResponse];
  @override
  final String wireName = 'OfficesResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, OfficesResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Offices',
      serializers.serialize(object.Offices,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(OfficeModel)])),
    ];

    return result;
  }

  @override
  OfficesResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfficesResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Offices':
          result.Offices.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(OfficeModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$OfficeModelSerializer implements StructuredSerializer<OfficeModel> {
  @override
  final Iterable<Type> types = const [OfficeModel, _$OfficeModel];
  @override
  final String wireName = 'OfficeModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, OfficeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'cns_registration_number',
      serializers.serialize(object.cns_registration_number,
          specifiedType: const FullType(String)),
      'office_phone',
      serializers.serialize(object.office_phone,
          specifiedType: const FullType(String)),
      'contact_phone',
      serializers.serialize(object.contact_phone,
          specifiedType: const FullType(String)),
      'manager_first_name',
      serializers.serialize(object.manager_first_name,
          specifiedType: const FullType(String)),
      'manager_last_name',
      serializers.serialize(object.manager_last_name,
          specifiedType: const FullType(String)),
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
    value = object.office_staff;
    if (value != null) {
      result
        ..add('office_staff')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(OfficestaffModel)));
    }
    return result;
  }

  @override
  OfficeModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OfficeModelBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cns_registration_number':
          result.cns_registration_number = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'office_phone':
          result.office_phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'contact_phone':
          result.contact_phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'manager_first_name':
          result.manager_first_name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'manager_last_name':
          result.manager_last_name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'office_staff':
          result.office_staff.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OfficestaffModel))!
              as OfficestaffModel);
          break;
      }
    }

    return result.build();
  }
}

class _$OfficesResponse extends OfficesResponse {
  @override
  final BuiltList<OfficeModel?> Offices;

  factory _$OfficesResponse([void Function(OfficesResponseBuilder)? updates]) =>
      (new OfficesResponseBuilder()..update(updates))._build();

  _$OfficesResponse._({required this.Offices}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        Offices, r'OfficesResponse', 'Offices');
  }

  @override
  OfficesResponse rebuild(void Function(OfficesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfficesResponseBuilder toBuilder() =>
      new OfficesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfficesResponse && Offices == other.Offices;
  }

  @override
  int get hashCode {
    return $jf($jc(0, Offices.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OfficesResponse')
          ..add('Offices', Offices))
        .toString();
  }
}

class OfficesResponseBuilder
    implements Builder<OfficesResponse, OfficesResponseBuilder> {
  _$OfficesResponse? _$v;

  ListBuilder<OfficeModel?>? _Offices;
  ListBuilder<OfficeModel?> get Offices =>
      _$this._Offices ??= new ListBuilder<OfficeModel?>();
  set Offices(ListBuilder<OfficeModel?>? Offices) => _$this._Offices = Offices;

  OfficesResponseBuilder();

  OfficesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Offices = $v.Offices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfficesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OfficesResponse;
  }

  @override
  void update(void Function(OfficesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OfficesResponse build() => _build();

  _$OfficesResponse _build() {
    _$OfficesResponse _$result;
    try {
      _$result = _$v ?? new _$OfficesResponse._(Offices: Offices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Offices';
        Offices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OfficesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OfficeModel extends OfficeModel {
  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String address;
  @override
  final String cns_registration_number;
  @override
  final String office_phone;
  @override
  final String contact_phone;
  @override
  final String manager_first_name;
  @override
  final String manager_last_name;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final OfficestaffModel? office_staff;

  factory _$OfficeModel([void Function(OfficeModelBuilder)? updates]) =>
      (new OfficeModelBuilder()..update(updates))._build();

  _$OfficeModel._(
      {required this.id,
      required this.name,
      required this.type,
      required this.address,
      required this.cns_registration_number,
      required this.office_phone,
      required this.contact_phone,
      required this.manager_first_name,
      required this.manager_last_name,
      this.created_at,
      this.updated_at,
      this.office_staff})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'OfficeModel', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'OfficeModel', 'name');
    BuiltValueNullFieldError.checkNotNull(type, r'OfficeModel', 'type');
    BuiltValueNullFieldError.checkNotNull(address, r'OfficeModel', 'address');
    BuiltValueNullFieldError.checkNotNull(
        cns_registration_number, r'OfficeModel', 'cns_registration_number');
    BuiltValueNullFieldError.checkNotNull(
        office_phone, r'OfficeModel', 'office_phone');
    BuiltValueNullFieldError.checkNotNull(
        contact_phone, r'OfficeModel', 'contact_phone');
    BuiltValueNullFieldError.checkNotNull(
        manager_first_name, r'OfficeModel', 'manager_first_name');
    BuiltValueNullFieldError.checkNotNull(
        manager_last_name, r'OfficeModel', 'manager_last_name');
  }

  @override
  OfficeModel rebuild(void Function(OfficeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfficeModelBuilder toBuilder() => new OfficeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfficeModel &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        address == other.address &&
        cns_registration_number == other.cns_registration_number &&
        office_phone == other.office_phone &&
        contact_phone == other.contact_phone &&
        manager_first_name == other.manager_first_name &&
        manager_last_name == other.manager_last_name &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        office_staff == other.office_staff;
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
                                            $jc($jc(0, id.hashCode),
                                                name.hashCode),
                                            type.hashCode),
                                        address.hashCode),
                                    cns_registration_number.hashCode),
                                office_phone.hashCode),
                            contact_phone.hashCode),
                        manager_first_name.hashCode),
                    manager_last_name.hashCode),
                created_at.hashCode),
            updated_at.hashCode),
        office_staff.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OfficeModel')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('address', address)
          ..add('cns_registration_number', cns_registration_number)
          ..add('office_phone', office_phone)
          ..add('contact_phone', contact_phone)
          ..add('manager_first_name', manager_first_name)
          ..add('manager_last_name', manager_last_name)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('office_staff', office_staff))
        .toString();
  }
}

class OfficeModelBuilder implements Builder<OfficeModel, OfficeModelBuilder> {
  _$OfficeModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _cns_registration_number;
  String? get cns_registration_number => _$this._cns_registration_number;
  set cns_registration_number(String? cns_registration_number) =>
      _$this._cns_registration_number = cns_registration_number;

  String? _office_phone;
  String? get office_phone => _$this._office_phone;
  set office_phone(String? office_phone) => _$this._office_phone = office_phone;

  String? _contact_phone;
  String? get contact_phone => _$this._contact_phone;
  set contact_phone(String? contact_phone) =>
      _$this._contact_phone = contact_phone;

  String? _manager_first_name;
  String? get manager_first_name => _$this._manager_first_name;
  set manager_first_name(String? manager_first_name) =>
      _$this._manager_first_name = manager_first_name;

  String? _manager_last_name;
  String? get manager_last_name => _$this._manager_last_name;
  set manager_last_name(String? manager_last_name) =>
      _$this._manager_last_name = manager_last_name;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  OfficestaffModelBuilder? _office_staff;
  OfficestaffModelBuilder get office_staff =>
      _$this._office_staff ??= new OfficestaffModelBuilder();
  set office_staff(OfficestaffModelBuilder? office_staff) =>
      _$this._office_staff = office_staff;

  OfficeModelBuilder();

  OfficeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _address = $v.address;
      _cns_registration_number = $v.cns_registration_number;
      _office_phone = $v.office_phone;
      _contact_phone = $v.contact_phone;
      _manager_first_name = $v.manager_first_name;
      _manager_last_name = $v.manager_last_name;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _office_staff = $v.office_staff?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfficeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OfficeModel;
  }

  @override
  void update(void Function(OfficeModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OfficeModel build() => _build();

  _$OfficeModel _build() {
    _$OfficeModel _$result;
    try {
      _$result = _$v ??
          new _$OfficeModel._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'OfficeModel', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'OfficeModel', 'name'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'OfficeModel', 'type'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, r'OfficeModel', 'address'),
              cns_registration_number: BuiltValueNullFieldError.checkNotNull(
                  cns_registration_number,
                  r'OfficeModel',
                  'cns_registration_number'),
              office_phone: BuiltValueNullFieldError.checkNotNull(
                  office_phone, r'OfficeModel', 'office_phone'),
              contact_phone: BuiltValueNullFieldError.checkNotNull(
                  contact_phone, r'OfficeModel', 'contact_phone'),
              manager_first_name: BuiltValueNullFieldError.checkNotNull(
                  manager_first_name, r'OfficeModel', 'manager_first_name'),
              manager_last_name: BuiltValueNullFieldError.checkNotNull(
                  manager_last_name, r'OfficeModel', 'manager_last_name'),
              created_at: created_at,
              updated_at: updated_at,
              office_staff: _office_staff?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'office_staff';
        _office_staff?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OfficeModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
