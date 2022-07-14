import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:letzcqre/models/profile/built_user.dart';

part '../built_me.g.dart';


abstract class MeModel implements Built<MeModel, MeModelBuilder> {
  @BuiltValueField(wireName: 'success')
  bool get success;
  @BuiltValueField(wireName: 'staff')
  UserModel get staff;
  
  MeModel._();

  factory MeModel([void Function(MeModelBuilder)? updates]) = _$MeModel;
  static Serializer<MeModel> get serializer => _$meModelSerializer;
}
