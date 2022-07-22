// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_patient.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PatientresponseModel> _$patientresponseModelSerializer =
    new _$PatientresponseModelSerializer();
Serializer<PatientdataModel> _$patientdataModelSerializer =
    new _$PatientdataModelSerializer();
Serializer<PatientModel> _$patientModelSerializer =
    new _$PatientModelSerializer();
Serializer<LegalprotectionModel> _$legalprotectionModelSerializer =
    new _$LegalprotectionModelSerializer();

class _$PatientresponseModelSerializer
    implements StructuredSerializer<PatientresponseModel> {
  @override
  final Iterable<Type> types = const [
    PatientresponseModel,
    _$PatientresponseModel
  ];
  @override
  final String wireName = 'PatientresponseModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PatientresponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.success;
    if (value != null) {
      result
        ..add('success')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patient;
    if (value != null) {
      result
        ..add('patient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PatientModel)));
    }
    value = object.patients;
    if (value != null) {
      result
        ..add('patients')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PatientModel)])));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PatientdataModel)));
    }
    return result;
  }

  @override
  PatientresponseModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientresponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'patient':
          result.patient.replace(serializers.deserialize(value,
              specifiedType: const FullType(PatientModel))! as PatientModel);
          break;
        case 'patients':
          result.patients.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PatientModel)]))!
              as BuiltList<Object?>);
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PatientdataModel))!
              as PatientdataModel);
          break;
      }
    }

    return result.build();
  }
}

class _$PatientdataModelSerializer
    implements StructuredSerializer<PatientdataModel> {
  @override
  final Iterable<Type> types = const [PatientdataModel, _$PatientdataModel];
  @override
  final String wireName = 'PatientdataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PatientdataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.patient;
    if (value != null) {
      result
        ..add('patient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PatientModel)));
    }
    return result;
  }

  @override
  PatientdataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientdataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'patient':
          result.patient.replace(serializers.deserialize(value,
              specifiedType: const FullType(PatientModel))! as PatientModel);
          break;
      }
    }

    return result.build();
  }
}

class _$PatientModelSerializer implements StructuredSerializer<PatientModel> {
  @override
  final Iterable<Type> types = const [PatientModel, _$PatientModel];
  @override
  final String wireName = 'PatientModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PatientModel object,
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
      'main_lang',
      serializers.serialize(object.main_lang,
          specifiedType: const FullType(String)),
      'other_lang',
      serializers.serialize(object.other_lang,
          specifiedType: const FullType(List, const [const FullType(String)])),
    ];
    Object? value;
    value = object.medical_office_id;
    if (value != null) {
      result
        ..add('medical_office_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.life_wish;
    if (value != null) {
      result
        ..add('life_wish')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LifewishModel)));
    }
    value = object.legal_protection;
    if (value != null) {
      result
        ..add('legal_protection')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LegalprotectionModel)));
    }
    value = object.electronicDocuments;
    if (value != null) {
      result
        ..add('electronicDocuments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DocumentModel)])));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birth_date;
    if (value != null) {
      result
        ..add('birth_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nationality;
    if (value != null) {
      result
        ..add('nationality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profession;
    if (value != null) {
      result
        ..add('profession')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.marital_status;
    if (value != null) {
      result
        ..add('marital_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.religion;
    if (value != null) {
      result
        ..add('religion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.care_status;
    if (value != null) {
      result
        ..add('care_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.biography;
    if (value != null) {
      result
        ..add('biography')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PatientModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientModelBuilder();

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
        case 'main_lang':
          result.main_lang = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'other_lang':
          result.other_lang = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))!
              as List<String>;
          break;
        case 'medical_office_id':
          result.medical_office_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'life_wish':
          result.life_wish.replace(serializers.deserialize(value,
              specifiedType: const FullType(LifewishModel))! as LifewishModel);
          break;
        case 'legal_protection':
          result.legal_protection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LegalprotectionModel))!
              as LegalprotectionModel);
          break;
        case 'electronicDocuments':
          result.electronicDocuments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DocumentModel)]))!
              as BuiltList<Object?>);
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birth_date':
          result.birth_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nationality':
          result.nationality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profession':
          result.profession = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'marital_status':
          result.marital_status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'religion':
          result.religion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'care_status':
          result.care_status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'biography':
          result.biography = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LegalprotectionModelSerializer
    implements StructuredSerializer<LegalprotectionModel> {
  @override
  final Iterable<Type> types = const [
    LegalprotectionModel,
    _$LegalprotectionModel
  ];
  @override
  final String wireName = 'LegalprotectionModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LegalprotectionModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'guardianship',
      serializers.serialize(object.guardianship,
          specifiedType: const FullType(String)),
      'curatorship',
      serializers.serialize(object.curatorship,
          specifiedType: const FullType(String)),
      'spousal_habilitation',
      serializers.serialize(object.spousal_habilitation,
          specifiedType: const FullType(String)),
      'family_empowerment',
      serializers.serialize(object.family_empowerment,
          specifiedType: const FullType(String)),
      'support_measure',
      serializers.serialize(object.support_measure,
          specifiedType: const FullType(String)),
      'mandate_of_future_protection',
      serializers.serialize(object.mandate_of_future_protection,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LegalprotectionModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LegalprotectionModelBuilder();

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
        case 'guardianship':
          result.guardianship = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'curatorship':
          result.curatorship = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'spousal_habilitation':
          result.spousal_habilitation = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'family_empowerment':
          result.family_empowerment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'support_measure':
          result.support_measure = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mandate_of_future_protection':
          result.mandate_of_future_protection = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PatientresponseModel extends PatientresponseModel {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final PatientModel? patient;
  @override
  final BuiltList<PatientModel>? patients;
  @override
  final PatientdataModel? data;

  factory _$PatientresponseModel(
          [void Function(PatientresponseModelBuilder)? updates]) =>
      (new PatientresponseModelBuilder()..update(updates))._build();

  _$PatientresponseModel._(
      {this.success, this.message, this.patient, this.patients, this.data})
      : super._();

  @override
  PatientresponseModel rebuild(
          void Function(PatientresponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientresponseModelBuilder toBuilder() =>
      new PatientresponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientresponseModel &&
        success == other.success &&
        message == other.message &&
        patient == other.patient &&
        patients == other.patients &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, success.hashCode), message.hashCode),
                patient.hashCode),
            patients.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientresponseModel')
          ..add('success', success)
          ..add('message', message)
          ..add('patient', patient)
          ..add('patients', patients)
          ..add('data', data))
        .toString();
  }
}

class PatientresponseModelBuilder
    implements Builder<PatientresponseModel, PatientresponseModelBuilder> {
  _$PatientresponseModel? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  PatientModelBuilder? _patient;
  PatientModelBuilder get patient =>
      _$this._patient ??= new PatientModelBuilder();
  set patient(PatientModelBuilder? patient) => _$this._patient = patient;

  ListBuilder<PatientModel>? _patients;
  ListBuilder<PatientModel> get patients =>
      _$this._patients ??= new ListBuilder<PatientModel>();
  set patients(ListBuilder<PatientModel>? patients) =>
      _$this._patients = patients;

  PatientdataModelBuilder? _data;
  PatientdataModelBuilder get data =>
      _$this._data ??= new PatientdataModelBuilder();
  set data(PatientdataModelBuilder? data) => _$this._data = data;

  PatientresponseModelBuilder();

  PatientresponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _patient = $v.patient?.toBuilder();
      _patients = $v.patients?.toBuilder();
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientresponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientresponseModel;
  }

  @override
  void update(void Function(PatientresponseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientresponseModel build() => _build();

  _$PatientresponseModel _build() {
    _$PatientresponseModel _$result;
    try {
      _$result = _$v ??
          new _$PatientresponseModel._(
              success: success,
              message: message,
              patient: _patient?.build(),
              patients: _patients?.build(),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patient';
        _patient?.build();
        _$failedField = 'patients';
        _patients?.build();
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PatientresponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PatientdataModel extends PatientdataModel {
  @override
  final PatientModel? patient;

  factory _$PatientdataModel(
          [void Function(PatientdataModelBuilder)? updates]) =>
      (new PatientdataModelBuilder()..update(updates))._build();

  _$PatientdataModel._({this.patient}) : super._();

  @override
  PatientdataModel rebuild(void Function(PatientdataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientdataModelBuilder toBuilder() =>
      new PatientdataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientdataModel && patient == other.patient;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patient.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientdataModel')
          ..add('patient', patient))
        .toString();
  }
}

class PatientdataModelBuilder
    implements Builder<PatientdataModel, PatientdataModelBuilder> {
  _$PatientdataModel? _$v;

  PatientModelBuilder? _patient;
  PatientModelBuilder get patient =>
      _$this._patient ??= new PatientModelBuilder();
  set patient(PatientModelBuilder? patient) => _$this._patient = patient;

  PatientdataModelBuilder();

  PatientdataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patient = $v.patient?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientdataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientdataModel;
  }

  @override
  void update(void Function(PatientdataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientdataModel build() => _build();

  _$PatientdataModel _build() {
    _$PatientdataModel _$result;
    try {
      _$result = _$v ?? new _$PatientdataModel._(patient: _patient?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patient';
        _patient?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PatientdataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PatientModel extends PatientModel {
  @override
  final int id;
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
  final String main_lang;
  @override
  final List<String> other_lang;
  @override
  final int? medical_office_id;
  @override
  final LifewishModel? life_wish;
  @override
  final LegalprotectionModel? legal_protection;
  @override
  final BuiltList<DocumentModel>? electronicDocuments;
  @override
  final String? gender;
  @override
  final String? birth_date;
  @override
  final String? nationality;
  @override
  final String? profession;
  @override
  final String? marital_status;
  @override
  final String? religion;
  @override
  final String? care_status;
  @override
  final String? biography;

  factory _$PatientModel([void Function(PatientModelBuilder)? updates]) =>
      (new PatientModelBuilder()..update(updates))._build();

  _$PatientModel._(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.personal_number,
      required this.phone,
      required this.email,
      required this.main_lang,
      required this.other_lang,
      this.medical_office_id,
      this.life_wish,
      this.legal_protection,
      this.electronicDocuments,
      this.gender,
      this.birth_date,
      this.nationality,
      this.profession,
      this.marital_status,
      this.religion,
      this.care_status,
      this.biography})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PatientModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        first_name, r'PatientModel', 'first_name');
    BuiltValueNullFieldError.checkNotNull(
        last_name, r'PatientModel', 'last_name');
    BuiltValueNullFieldError.checkNotNull(
        personal_number, r'PatientModel', 'personal_number');
    BuiltValueNullFieldError.checkNotNull(phone, r'PatientModel', 'phone');
    BuiltValueNullFieldError.checkNotNull(email, r'PatientModel', 'email');
    BuiltValueNullFieldError.checkNotNull(
        main_lang, r'PatientModel', 'main_lang');
    BuiltValueNullFieldError.checkNotNull(
        other_lang, r'PatientModel', 'other_lang');
  }

  @override
  PatientModel rebuild(void Function(PatientModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientModelBuilder toBuilder() => new PatientModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientModel &&
        id == other.id &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        personal_number == other.personal_number &&
        phone == other.phone &&
        email == other.email &&
        main_lang == other.main_lang &&
        other_lang == other.other_lang &&
        medical_office_id == other.medical_office_id &&
        life_wish == other.life_wish &&
        legal_protection == other.legal_protection &&
        electronicDocuments == other.electronicDocuments &&
        gender == other.gender &&
        birth_date == other.birth_date &&
        nationality == other.nationality &&
        profession == other.profession &&
        marital_status == other.marital_status &&
        religion == other.religion &&
        care_status == other.care_status &&
        biography == other.biography;
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
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc(0, id.hashCode),
                                                                                first_name.hashCode),
                                                                            last_name.hashCode),
                                                                        personal_number.hashCode),
                                                                    phone.hashCode),
                                                                email.hashCode),
                                                            main_lang.hashCode),
                                                        other_lang.hashCode),
                                                    medical_office_id.hashCode),
                                                life_wish.hashCode),
                                            legal_protection.hashCode),
                                        electronicDocuments.hashCode),
                                    gender.hashCode),
                                birth_date.hashCode),
                            nationality.hashCode),
                        profession.hashCode),
                    marital_status.hashCode),
                religion.hashCode),
            care_status.hashCode),
        biography.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientModel')
          ..add('id', id)
          ..add('first_name', first_name)
          ..add('last_name', last_name)
          ..add('personal_number', personal_number)
          ..add('phone', phone)
          ..add('email', email)
          ..add('main_lang', main_lang)
          ..add('other_lang', other_lang)
          ..add('medical_office_id', medical_office_id)
          ..add('life_wish', life_wish)
          ..add('legal_protection', legal_protection)
          ..add('electronicDocuments', electronicDocuments)
          ..add('gender', gender)
          ..add('birth_date', birth_date)
          ..add('nationality', nationality)
          ..add('profession', profession)
          ..add('marital_status', marital_status)
          ..add('religion', religion)
          ..add('care_status', care_status)
          ..add('biography', biography))
        .toString();
  }
}

class PatientModelBuilder
    implements Builder<PatientModel, PatientModelBuilder> {
  _$PatientModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  String? _main_lang;
  String? get main_lang => _$this._main_lang;
  set main_lang(String? main_lang) => _$this._main_lang = main_lang;

  List<String>? _other_lang;
  List<String>? get other_lang => _$this._other_lang;
  set other_lang(List<String>? other_lang) => _$this._other_lang = other_lang;

  int? _medical_office_id;
  int? get medical_office_id => _$this._medical_office_id;
  set medical_office_id(int? medical_office_id) =>
      _$this._medical_office_id = medical_office_id;

  LifewishModelBuilder? _life_wish;
  LifewishModelBuilder get life_wish =>
      _$this._life_wish ??= new LifewishModelBuilder();
  set life_wish(LifewishModelBuilder? life_wish) =>
      _$this._life_wish = life_wish;

  LegalprotectionModelBuilder? _legal_protection;
  LegalprotectionModelBuilder get legal_protection =>
      _$this._legal_protection ??= new LegalprotectionModelBuilder();
  set legal_protection(LegalprotectionModelBuilder? legal_protection) =>
      _$this._legal_protection = legal_protection;

  ListBuilder<DocumentModel>? _electronicDocuments;
  ListBuilder<DocumentModel> get electronicDocuments =>
      _$this._electronicDocuments ??= new ListBuilder<DocumentModel>();
  set electronicDocuments(ListBuilder<DocumentModel>? electronicDocuments) =>
      _$this._electronicDocuments = electronicDocuments;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _birth_date;
  String? get birth_date => _$this._birth_date;
  set birth_date(String? birth_date) => _$this._birth_date = birth_date;

  String? _nationality;
  String? get nationality => _$this._nationality;
  set nationality(String? nationality) => _$this._nationality = nationality;

  String? _profession;
  String? get profession => _$this._profession;
  set profession(String? profession) => _$this._profession = profession;

  String? _marital_status;
  String? get marital_status => _$this._marital_status;
  set marital_status(String? marital_status) =>
      _$this._marital_status = marital_status;

  String? _religion;
  String? get religion => _$this._religion;
  set religion(String? religion) => _$this._religion = religion;

  String? _care_status;
  String? get care_status => _$this._care_status;
  set care_status(String? care_status) => _$this._care_status = care_status;

  String? _biography;
  String? get biography => _$this._biography;
  set biography(String? biography) => _$this._biography = biography;

  PatientModelBuilder();

  PatientModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _first_name = $v.first_name;
      _last_name = $v.last_name;
      _personal_number = $v.personal_number;
      _phone = $v.phone;
      _email = $v.email;
      _main_lang = $v.main_lang;
      _other_lang = $v.other_lang;
      _medical_office_id = $v.medical_office_id;
      _life_wish = $v.life_wish?.toBuilder();
      _legal_protection = $v.legal_protection?.toBuilder();
      _electronicDocuments = $v.electronicDocuments?.toBuilder();
      _gender = $v.gender;
      _birth_date = $v.birth_date;
      _nationality = $v.nationality;
      _profession = $v.profession;
      _marital_status = $v.marital_status;
      _religion = $v.religion;
      _care_status = $v.care_status;
      _biography = $v.biography;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientModel;
  }

  @override
  void update(void Function(PatientModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientModel build() => _build();

  _$PatientModel _build() {
    _$PatientModel _$result;
    try {
      _$result = _$v ??
          new _$PatientModel._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'PatientModel', 'id'),
              first_name: BuiltValueNullFieldError.checkNotNull(
                  first_name, r'PatientModel', 'first_name'),
              last_name: BuiltValueNullFieldError.checkNotNull(
                  last_name, r'PatientModel', 'last_name'),
              personal_number: BuiltValueNullFieldError.checkNotNull(
                  personal_number, r'PatientModel', 'personal_number'),
              phone: BuiltValueNullFieldError.checkNotNull(
                  phone, r'PatientModel', 'phone'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'PatientModel', 'email'),
              main_lang: BuiltValueNullFieldError.checkNotNull(
                  main_lang, r'PatientModel', 'main_lang'),
              other_lang: BuiltValueNullFieldError.checkNotNull(
                  other_lang, r'PatientModel', 'other_lang'),
              medical_office_id: medical_office_id,
              life_wish: _life_wish?.build(),
              legal_protection: _legal_protection?.build(),
              electronicDocuments: _electronicDocuments?.build(),
              gender: gender,
              birth_date: birth_date,
              nationality: nationality,
              profession: profession,
              marital_status: marital_status,
              religion: religion,
              care_status: care_status,
              biography: biography);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'life_wish';
        _life_wish?.build();
        _$failedField = 'legal_protection';
        _legal_protection?.build();
        _$failedField = 'electronicDocuments';
        _electronicDocuments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PatientModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LegalprotectionModel extends LegalprotectionModel {
  @override
  final int id;
  @override
  final String guardianship;
  @override
  final String curatorship;
  @override
  final String spousal_habilitation;
  @override
  final String family_empowerment;
  @override
  final String support_measure;
  @override
  final String mandate_of_future_protection;

  factory _$LegalprotectionModel(
          [void Function(LegalprotectionModelBuilder)? updates]) =>
      (new LegalprotectionModelBuilder()..update(updates))._build();

  _$LegalprotectionModel._(
      {required this.id,
      required this.guardianship,
      required this.curatorship,
      required this.spousal_habilitation,
      required this.family_empowerment,
      required this.support_measure,
      required this.mandate_of_future_protection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'LegalprotectionModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        guardianship, r'LegalprotectionModel', 'guardianship');
    BuiltValueNullFieldError.checkNotNull(
        curatorship, r'LegalprotectionModel', 'curatorship');
    BuiltValueNullFieldError.checkNotNull(
        spousal_habilitation, r'LegalprotectionModel', 'spousal_habilitation');
    BuiltValueNullFieldError.checkNotNull(
        family_empowerment, r'LegalprotectionModel', 'family_empowerment');
    BuiltValueNullFieldError.checkNotNull(
        support_measure, r'LegalprotectionModel', 'support_measure');
    BuiltValueNullFieldError.checkNotNull(mandate_of_future_protection,
        r'LegalprotectionModel', 'mandate_of_future_protection');
  }

  @override
  LegalprotectionModel rebuild(
          void Function(LegalprotectionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegalprotectionModelBuilder toBuilder() =>
      new LegalprotectionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegalprotectionModel &&
        id == other.id &&
        guardianship == other.guardianship &&
        curatorship == other.curatorship &&
        spousal_habilitation == other.spousal_habilitation &&
        family_empowerment == other.family_empowerment &&
        support_measure == other.support_measure &&
        mandate_of_future_protection == other.mandate_of_future_protection;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), guardianship.hashCode),
                        curatorship.hashCode),
                    spousal_habilitation.hashCode),
                family_empowerment.hashCode),
            support_measure.hashCode),
        mandate_of_future_protection.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LegalprotectionModel')
          ..add('id', id)
          ..add('guardianship', guardianship)
          ..add('curatorship', curatorship)
          ..add('spousal_habilitation', spousal_habilitation)
          ..add('family_empowerment', family_empowerment)
          ..add('support_measure', support_measure)
          ..add('mandate_of_future_protection', mandate_of_future_protection))
        .toString();
  }
}

class LegalprotectionModelBuilder
    implements Builder<LegalprotectionModel, LegalprotectionModelBuilder> {
  _$LegalprotectionModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _guardianship;
  String? get guardianship => _$this._guardianship;
  set guardianship(String? guardianship) => _$this._guardianship = guardianship;

  String? _curatorship;
  String? get curatorship => _$this._curatorship;
  set curatorship(String? curatorship) => _$this._curatorship = curatorship;

  String? _spousal_habilitation;
  String? get spousal_habilitation => _$this._spousal_habilitation;
  set spousal_habilitation(String? spousal_habilitation) =>
      _$this._spousal_habilitation = spousal_habilitation;

  String? _family_empowerment;
  String? get family_empowerment => _$this._family_empowerment;
  set family_empowerment(String? family_empowerment) =>
      _$this._family_empowerment = family_empowerment;

  String? _support_measure;
  String? get support_measure => _$this._support_measure;
  set support_measure(String? support_measure) =>
      _$this._support_measure = support_measure;

  String? _mandate_of_future_protection;
  String? get mandate_of_future_protection =>
      _$this._mandate_of_future_protection;
  set mandate_of_future_protection(String? mandate_of_future_protection) =>
      _$this._mandate_of_future_protection = mandate_of_future_protection;

  LegalprotectionModelBuilder();

  LegalprotectionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _guardianship = $v.guardianship;
      _curatorship = $v.curatorship;
      _spousal_habilitation = $v.spousal_habilitation;
      _family_empowerment = $v.family_empowerment;
      _support_measure = $v.support_measure;
      _mandate_of_future_protection = $v.mandate_of_future_protection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LegalprotectionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LegalprotectionModel;
  }

  @override
  void update(void Function(LegalprotectionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegalprotectionModel build() => _build();

  _$LegalprotectionModel _build() {
    final _$result = _$v ??
        new _$LegalprotectionModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'LegalprotectionModel', 'id'),
            guardianship: BuiltValueNullFieldError.checkNotNull(
                guardianship, r'LegalprotectionModel', 'guardianship'),
            curatorship: BuiltValueNullFieldError.checkNotNull(
                curatorship, r'LegalprotectionModel', 'curatorship'),
            spousal_habilitation: BuiltValueNullFieldError.checkNotNull(
                spousal_habilitation, r'LegalprotectionModel', 'spousal_habilitation'),
            family_empowerment: BuiltValueNullFieldError.checkNotNull(
                family_empowerment, r'LegalprotectionModel', 'family_empowerment'),
            support_measure: BuiltValueNullFieldError.checkNotNull(
                support_measure, r'LegalprotectionModel', 'support_measure'),
            mandate_of_future_protection: BuiltValueNullFieldError.checkNotNull(
                mandate_of_future_protection,
                r'LegalprotectionModel',
                'mandate_of_future_protection'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
