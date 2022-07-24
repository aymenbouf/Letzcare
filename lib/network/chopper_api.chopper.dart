// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Chopper_Api extends Chopper_Api {
  _$Chopper_Api([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Chopper_Api;

  @override
  Future<Response<MeModel>> getMe(String token) {
    final $url = 'profile';
    final $headers = {
      'Authorization': token,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<MeModel, MeModel>($request);
  }

  @override
  Future<Response<MyofficesModel>> getMyOffices(String token) {
    final $url = 'my-offices';
    final $headers = {
      'Authorization': token,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<MyofficesModel, MyofficesModel>($request);
  }

  @override
  Future<Response<PatientResponse>> getPatients(String token) {
    final $url = 'patients';
    final $headers = {
      'Authorization': token,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<PatientResponse, PatientResponse>($request);
  }

  @override
  Future<Response<PatientResponse>> getPatient(int id, String token) {
    final $url = 'patients/${id}';
    final $headers = {
      'Authorization': token,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<PatientResponse, PatientResponse>($request);
  }

  @override
  Future<Response<OfficeConnectionResponse>> getConnOffice(
      int id, String token) {
    final $url = 'offices/${id}/connect';
    final $headers = {
      'Authorization': token,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client
        .send<OfficeConnectionResponse, OfficeConnectionResponse>($request);
  }

  @override
  Future<Response<OfficeConnectionResponse>> getDisConnOffice(String token) {
    final $url = 'offices/disconnect';
    final $headers = {
      'Authorization': token,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client
        .send<OfficeConnectionResponse, OfficeConnectionResponse>($request);
  }

  @override
  Future<Response<LogoutModel>> logout(String token) {
    final $url = 'logout';
    final $headers = {
      'Authorization': token,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<LogoutModel, LogoutModel>($request);
  }

  @override
  Future<Response<LoginModel>> login(AuthModel body) {
    final $url = 'login';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<LoginModel, LoginModel>($request);
  }
}
