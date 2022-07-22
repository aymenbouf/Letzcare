import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:letzcqre/models/patient/life_wish/built_lifewish.dart';

part 'built_wish_manipulation.g.dart';


abstract class WishresponseModel implements Built<WishresponseModel, WishresponseModelBuilder> {
  @BuiltValueField(wireName: 'success')
  bool get success;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  LifewishdetailsModel? get data;
  
  
 WishresponseModel._();

  factory WishresponseModel([void Function(WishresponseModelBuilder)? updates]) = _$WishresponseModel;
  static Serializer<WishresponseModel> get serializer => _$wishresponseModelSerializer;
}






