// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_login.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginModel> _$loginModelSerializer = new _$LoginModelSerializer();
Serializer<AuthModel> _$authModelSerializer = new _$AuthModelSerializer();

class _$LoginModelSerializer implements StructuredSerializer<LoginModel> {
  @override
  final Iterable<Type> types = const [LoginModel, _$LoginModel];
  @override
  final String wireName = 'LoginModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoginModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'access_token',
      serializers.serialize(object.access_token,
          specifiedType: const FullType(String)),
      'token_type',
      serializers.serialize(object.token_type,
          specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user,
          specifiedType: const FullType(UserModel)),
    ];

    return result;
  }

  @override
  LoginModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token_type':
          result.token_type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserModel))! as UserModel);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthModelSerializer implements StructuredSerializer<AuthModel> {
  @override
  final Iterable<Type> types = const [AuthModel, _$AuthModel];
  @override
  final String wireName = 'AuthModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AuthModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'fcm_token',
      serializers.serialize(object.fcm_token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AuthModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'fcm_token':
          result.fcm_token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginModel extends LoginModel {
  @override
  final String access_token;
  @override
  final String token_type;
  @override
  final UserModel user;

  factory _$LoginModel([void Function(LoginModelBuilder)? updates]) =>
      (new LoginModelBuilder()..update(updates))._build();

  _$LoginModel._(
      {required this.access_token,
      required this.token_type,
      required this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        access_token, r'LoginModel', 'access_token');
    BuiltValueNullFieldError.checkNotNull(
        token_type, r'LoginModel', 'token_type');
    BuiltValueNullFieldError.checkNotNull(user, r'LoginModel', 'user');
  }

  @override
  LoginModel rebuild(void Function(LoginModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginModelBuilder toBuilder() => new LoginModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginModel &&
        access_token == other.access_token &&
        token_type == other.token_type &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, access_token.hashCode), token_type.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginModel')
          ..add('access_token', access_token)
          ..add('token_type', token_type)
          ..add('user', user))
        .toString();
  }
}

class LoginModelBuilder implements Builder<LoginModel, LoginModelBuilder> {
  _$LoginModel? _$v;

  String? _access_token;
  String? get access_token => _$this._access_token;
  set access_token(String? access_token) => _$this._access_token = access_token;

  String? _token_type;
  String? get token_type => _$this._token_type;
  set token_type(String? token_type) => _$this._token_type = token_type;

  UserModelBuilder? _user;
  UserModelBuilder get user => _$this._user ??= new UserModelBuilder();
  set user(UserModelBuilder? user) => _$this._user = user;

  LoginModelBuilder();

  LoginModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _access_token = $v.access_token;
      _token_type = $v.token_type;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginModel;
  }

  @override
  void update(void Function(LoginModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginModel build() => _build();

  _$LoginModel _build() {
    _$LoginModel _$result;
    try {
      _$result = _$v ??
          new _$LoginModel._(
              access_token: BuiltValueNullFieldError.checkNotNull(
                  access_token, r'LoginModel', 'access_token'),
              token_type: BuiltValueNullFieldError.checkNotNull(
                  token_type, r'LoginModel', 'token_type'),
              user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoginModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AuthModel extends AuthModel {
  @override
  final String email;
  @override
  final String password;
  @override
  final String fcm_token;

  factory _$AuthModel([void Function(AuthModelBuilder)? updates]) =>
      (new AuthModelBuilder()..update(updates))._build();

  _$AuthModel._(
      {required this.email, required this.password, required this.fcm_token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'AuthModel', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'AuthModel', 'password');
    BuiltValueNullFieldError.checkNotNull(fcm_token, r'AuthModel', 'fcm_token');
  }

  @override
  AuthModel rebuild(void Function(AuthModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthModelBuilder toBuilder() => new AuthModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthModel &&
        email == other.email &&
        password == other.password &&
        fcm_token == other.fcm_token;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, email.hashCode), password.hashCode), fcm_token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthModel')
          ..add('email', email)
          ..add('password', password)
          ..add('fcm_token', fcm_token))
        .toString();
  }
}

class AuthModelBuilder implements Builder<AuthModel, AuthModelBuilder> {
  _$AuthModel? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _fcm_token;
  String? get fcm_token => _$this._fcm_token;
  set fcm_token(String? fcm_token) => _$this._fcm_token = fcm_token;

  AuthModelBuilder();

  AuthModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _fcm_token = $v.fcm_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthModel;
  }

  @override
  void update(void Function(AuthModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthModel build() => _build();

  _$AuthModel _build() {
    final _$result = _$v ??
        new _$AuthModel._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'AuthModel', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'AuthModel', 'password'),
            fcm_token: BuiltValueNullFieldError.checkNotNull(
                fcm_token, r'AuthModel', 'fcm_token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
