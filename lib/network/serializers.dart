import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:letzcqre/models/patient/built_document.dart';
import 'package:built_collection/built_collection.dart';
import 'package:letzcqre/models/patient/built_patient.dart';
import 'package:letzcqre/models/patient/life_wish/built_lifewish.dart';
import 'package:letzcqre/models/patient/life_wish/built_wish_error.dart';
import 'package:letzcqre/models/patient/life_wish/built_wish_manipulation.dart';
import 'package:letzcqre/models/patient/relative/built_relative_manipulation.dart';
import 'package:letzcqre/models/patient/relative/built_relativeslist.dart';
import '../models/office/built_connect_office.dart';
import '../models/office/built_my_offices.dart';
import '../models/office/built_office_staff.dart';
import '../models/office/built_office.dart';
import '../models/auth/built_login.dart';
import '../models/auth/built_logout.dart';
import 'package:letzcqre/models/patient/relative/built_relative.dart';
import '../models/pagination/built_links.dart';
import '../models/pagination/built_meta.dart';
import '../models/profile/built_user.dart';
import '../models/profile/built_me.dart';

part 'serializers.g.dart';

@SerializersFor([
  UserModel,
  MeModel,
  MetalinkModel,
  MetaModel,
  LinksModel,
  OfficeModel,
  OfficestaffModel,
  MyofficesModel,
  DataModel,
  OfficeConnectionResponse,
  LogoutModel,
  LoginModel,
  AuthModel,
  LifewishModel,
  LifewishdetailsModel,
  ErrorModel,
  WisherrorModel,
  WishresponseModel,
  RelativeresponseModel,
  RelativedetailsModel,
  RelativeModel,
  RelativesModel,
  DocumentModel,
  PatientResponse,
  PatientdataModel,
  PatientModel,
  LegalprotectionModel
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
