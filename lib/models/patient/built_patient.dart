import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:letzcqre/models/patient/built_document.dart';
import 'package:letzcqre/models/patient/life_wish/built_lifewish.dart';
import 'package:built_collection/built_collection.dart';



part 'built_patient.g.dart';


abstract class PatientresponseModel implements Built<PatientresponseModel, PatientresponseModelBuilder> {
  @BuiltValueField(wireName: 'success')
  bool? get success;
  @BuiltValueField(wireName: 'message')
  String? get message;
  @BuiltValueField(wireName: 'patient')
  PatientModel? get patient;
  @BuiltValueField(wireName: 'patients')
  BuiltList<PatientModel>? get patients;
  @BuiltValueField(wireName: 'data')
  PatientdataModel? get data;
  

  
  
  PatientresponseModel._();

  factory PatientresponseModel([void Function(PatientresponseModelBuilder)? updates]) = _$PatientresponseModel;
  static Serializer<PatientresponseModel> get serializer => _$patientresponseModelSerializer;
}
abstract class PatientdataModel implements Built<PatientdataModel, PatientdataModelBuilder> {
  
  @BuiltValueField(wireName: 'patient')
  PatientModel? get patient;
  
  
  PatientdataModel._();

  factory PatientdataModel([void Function(PatientdataModelBuilder)? updates]) = _$PatientdataModel;
  static Serializer<PatientdataModel> get serializer => _$patientdataModelSerializer;
}


abstract class PatientModel implements Built<PatientModel, PatientModelBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'first_name')
  String get first_name;
  @BuiltValueField(wireName: 'last_name')
  String get last_name;
  @BuiltValueField(wireName: 'personal_number')
  String get personal_number;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'main_lang')
  String get main_lang;
  @BuiltValueField(wireName: 'other_lang')
  List<String> get other_lang;
  @BuiltValueField(wireName: 'medical_office_id')
  int? get medical_office_id;
  @BuiltValueField(wireName: 'life_wish')
  LifewishModel? get life_wish;
  @BuiltValueField(wireName: 'legal_protection')
  LegalprotectionModel? get legal_protection;
  @BuiltValueField(wireName: 'electronicDocuments')
  BuiltList<DocumentModel>? get electronicDocuments;

  @BuiltValueField(wireName: 'gender')
  String? get gender;
  @BuiltValueField(wireName: 'birth_date')
  String? get birth_date;
  @BuiltValueField(wireName: 'nationality')
  String? get nationality;
  @BuiltValueField(wireName: 'profession')
  String? get profession;
  @BuiltValueField(wireName: 'marital_status')
  String? get marital_status;
  @BuiltValueField(wireName: 'religion')
  String? get religion;
  @BuiltValueField(wireName: 'care_status')
  String? get care_status;
  @BuiltValueField(wireName: 'biography')
  String? get biography;


  
  PatientModel._();

  factory PatientModel([void Function(PatientModelBuilder)? updates]) = _$PatientModel;
  static Serializer<PatientModel> get serializer => _$patientModelSerializer;
}

abstract class LegalprotectionModel implements Built<LegalprotectionModel, LegalprotectionModelBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'guardianship')
  String get guardianship;
  @BuiltValueField(wireName: 'curatorship')
  String get curatorship;
  @BuiltValueField(wireName: 'spousal_habilitation')
  String get spousal_habilitation;
  @BuiltValueField(wireName: 'family_empowerment')
  String get family_empowerment;
  @BuiltValueField(wireName: 'support_measure')
  String get support_measure;
  @BuiltValueField(wireName: 'mandate_of_future_protection')
  String get mandate_of_future_protection;
  
  LegalprotectionModel._();

  factory LegalprotectionModel([void Function(LegalprotectionModelBuilder)? updates]) = _$LegalprotectionModel;
  static Serializer<LegalprotectionModel> get serializer => _$legalprotectionModelSerializer;
}

