import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Network{
  final String _url = 'http://letzcare.dev-it.me/api/office/';

  String get url => _url;
  var token;

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = localStorage.getString('access_token')!.replaceAll('"','');
  }

  authData(data, apiUrl) async {
    Uri fullUrl = Uri.parse(_url + apiUrl);
    return await http.post(
        fullUrl,
        body: jsonEncode(data),
        headers: _setHeaders()
    );
  }
  postData(data, apiUrl) async {
    var fullUrl = Uri.parse(_url + apiUrl);
    await _getToken();
    return await http.post(
        fullUrl,
        body: jsonEncode(data),
        headers: _setHeaders()
    );
  }

  getData(apiUrl) async {
    Uri fullUrl = Uri.parse(_url + apiUrl);
    await _getToken();
    return await http.get(
        fullUrl,
        headers: _setHeaders()
    );
  }
  putData(data, apiUrl) async {
    var fullUrl = Uri.parse(_url + apiUrl);
    await _getToken();
    return await http.put(
        fullUrl,
        body: data,
        headers: _setHeaders()
    );
  }

  deleteData(apiUrl) async {
    var fullUrl = Uri.parse(_url + apiUrl);
    await _getToken();
    return await http.delete(
      fullUrl,
      headers: _setHeaders()
    );
  }

  _setHeaders() => {
    'Content-type' : 'application/json',
    'X-Requested-With':'XMLHttpRequest',
    'Accept' : 'application/json',
    'Authorization' : 'Bearer $token'
  };

}