import 'dart:convert';
import "dart:async";
import 'package:letzcqre/models/auth/built_login.dart';
import 'package:letzcqre/models/auth/built_logout.dart';
import 'package:letzcqre/models/office/built_connect_office.dart';
import 'package:letzcqre/models/office/built_my_offices.dart';
import 'package:letzcqre/models/patient/built_patient.dart';
import 'package:letzcqre/models/profile/built_me.dart';
import 'package:letzcqre/network/built_value_converter.dart';
import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';

part 'chopper_api.chopper.dart';

@ChopperApi()
abstract class Chopper_Api extends ChopperService {
  @Get(path: 'profile')
  Future<Response<MeModel>> getMe(@Header('Authorization') String token);

  @Get(path: 'my-offices')
  Future<Response<MyofficesModel>> getMyOffices(
      @Header('Authorization') String token);

  @Get(path: 'patients')
  Future<Response<PatientResponse>> getPatients(
      @Header('Authorization') String token);

  @Get(path: 'patients/{id}')
  Future<Response<PatientResponse>> getPatient(
      @Path('id') int id, @Header('Authorization') String token);

  @Post(path: 'offices/{id}/connect')
  Future<Response<OfficeConnectionResponse>> getConnOffice(
      @Path('id') int id, @Header('Authorization') String token);

  @Post(path: 'offices/disconnect')
  Future<Response<OfficeConnectionResponse>> getDisConnOffice(
      @Header('Authorization') String token);

  @Post(path: 'logout')
  Future<Response<LogoutModel>> logout(@Header('Authorization') String token);

  @Post(path: 'login')
  Future<Response<LoginModel>> login(
    @Body() AuthModel body,
  );

  static Chopper_Api create() {
    final client = ChopperClient(
        baseUrl: 'http://letzcare.dev-it.me/api/office/',
        services: [
          _$Chopper_Api(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          const HeadersInterceptor({
            'Content-type': 'application/json',
            'Accept': 'application/json',
            'X-Requested-With': 'XMLHttpRequest'
          }),
        ]);
    return _$Chopper_Api(client);
  }
}
