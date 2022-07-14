import 'dart:convert';
import "dart:async";
import 'package:letzcqre/network/built_value_converter.dart';
import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
part 'chopper_api.chopper.dart';

@ChopperApi()
abstract class Chopper_Api extends ChopperService {
 

  static Chopper_Api create() {
    final client = ChopperClient(
      baseUrl: ' http://letzcare.dev-it.me/api/',
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

        ]
    );
    return _$Chopper_Api(client); 
  }
}
