import 'package:letzcqre/network/serializers.dart';
import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';



class BuiltValueConverter extends JsonConverter {
  @override
  Request convertRequest(Request request) {
    // TODO: implement convertRequest
    return super.convertRequest(request.copyWith(
      body: serializers.serializeWith(serializers.serializerForType(request.body.runtimeType)!,
          request.body),
      ),
    );
  }
  @override
  Response<BodyType> convertResponse<BodyType, SingleItemType>(Response response) {
    final Response dynamicResponse = super.convertResponse(response);
    // customBody can be either a BuiltList<SingleItemType> or just the SingleItemType (if there's no list).
    final BodyType customBody = _convertToCustomObject<SingleItemType>(dynamicResponse.body);
    return dynamicResponse.copyWith<BodyType>(body: customBody);
  }

  dynamic _convertToCustomObject<SingleItemType>(dynamic element) {
    // If the type which the response should hold is explicitly set to a dynamic Map,
    // there's nothing we can convert.
    if (element is SingleItemType) return element;

    if (element is List)
      return _deserializeListOf<SingleItemType>(element);
    else
      return _deserialize<SingleItemType>(element);
  }

  BuiltList<SingleItemType> _deserializeListOf<SingleItemType>(
      List dynamicList,
      ) {
    // Make a BuiltList holding individual custom objects
    return BuiltList<SingleItemType>(
      dynamicList.map((element) => _deserialize<SingleItemType>(element)),
    );
  }

  SingleItemType _deserialize<SingleItemType>(
      Map<String, dynamic> value,
      ) {
    // We have a type parameter for the BuiltValue type
    // which should be returned after deserialization.
    /*return serializers.deserializeWith<SingleItemType>(
      serializers.serializerForType(SingleItemType), value,);*/
    return serializers.deserializeWith(serializers.serializerForType(SingleItemType)!, // Error Start
      value,
    );
  }
}