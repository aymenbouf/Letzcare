// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MetalinkModel> _$metalinkModelSerializer =
    new _$MetalinkModelSerializer();
Serializer<MetalinksResponse> _$metalinksResponseSerializer =
    new _$MetalinksResponseSerializer();
Serializer<MetaModel> _$metaModelSerializer = new _$MetaModelSerializer();

class _$MetalinkModelSerializer implements StructuredSerializer<MetalinkModel> {
  @override
  final Iterable<Type> types = const [MetalinkModel, _$MetalinkModel];
  @override
  final String wireName = 'MetalinkModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MetalinkModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'active',
      serializers.serialize(object.active, specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  MetalinkModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetalinkModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$MetalinksResponseSerializer
    implements StructuredSerializer<MetalinksResponse> {
  @override
  final Iterable<Type> types = const [MetalinksResponse, _$MetalinksResponse];
  @override
  final String wireName = 'MetalinksResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, MetalinksResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Metalinks',
      serializers.serialize(object.Metalinks,
          specifiedType: const FullType(
              BuiltList, const [const FullType.nullable(MetalinkModel)])),
    ];

    return result;
  }

  @override
  MetalinksResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetalinksResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Metalinks':
          result.Metalinks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(MetalinkModel)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$MetaModelSerializer implements StructuredSerializer<MetaModel> {
  @override
  final Iterable<Type> types = const [MetaModel, _$MetaModel];
  @override
  final String wireName = 'MetaModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MetaModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'current_page',
      serializers.serialize(object.current_page,
          specifiedType: const FullType(int)),
      'from',
      serializers.serialize(object.from, specifiedType: const FullType(int)),
      'last_page',
      serializers.serialize(object.last_page,
          specifiedType: const FullType(int)),
      'links',
      serializers.serialize(object.links,
          specifiedType: const FullType(MetalinksResponse)),
      'path',
      serializers.serialize(object.path, specifiedType: const FullType(String)),
      'per_page',
      serializers.serialize(object.per_page,
          specifiedType: const FullType(int)),
      'to',
      serializers.serialize(object.to, specifiedType: const FullType(int)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MetaModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MetaModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'current_page':
          result.current_page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'last_page':
          result.last_page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MetalinksResponse))!
              as MetalinksResponse);
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'per_page':
          result.per_page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MetalinkModel extends MetalinkModel {
  @override
  final String url;
  @override
  final String label;
  @override
  final bool active;

  factory _$MetalinkModel([void Function(MetalinkModelBuilder)? updates]) =>
      (new MetalinkModelBuilder()..update(updates))._build();

  _$MetalinkModel._(
      {required this.url, required this.label, required this.active})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(url, r'MetalinkModel', 'url');
    BuiltValueNullFieldError.checkNotNull(label, r'MetalinkModel', 'label');
    BuiltValueNullFieldError.checkNotNull(active, r'MetalinkModel', 'active');
  }

  @override
  MetalinkModel rebuild(void Function(MetalinkModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetalinkModelBuilder toBuilder() => new MetalinkModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetalinkModel &&
        url == other.url &&
        label == other.label &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, url.hashCode), label.hashCode), active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetalinkModel')
          ..add('url', url)
          ..add('label', label)
          ..add('active', active))
        .toString();
  }
}

class MetalinkModelBuilder
    implements Builder<MetalinkModel, MetalinkModelBuilder> {
  _$MetalinkModel? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  MetalinkModelBuilder();

  MetalinkModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _label = $v.label;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetalinkModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetalinkModel;
  }

  @override
  void update(void Function(MetalinkModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetalinkModel build() => _build();

  _$MetalinkModel _build() {
    final _$result = _$v ??
        new _$MetalinkModel._(
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'MetalinkModel', 'url'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'MetalinkModel', 'label'),
            active: BuiltValueNullFieldError.checkNotNull(
                active, r'MetalinkModel', 'active'));
    replace(_$result);
    return _$result;
  }
}

class _$MetalinksResponse extends MetalinksResponse {
  @override
  final BuiltList<MetalinkModel?> Metalinks;

  factory _$MetalinksResponse(
          [void Function(MetalinksResponseBuilder)? updates]) =>
      (new MetalinksResponseBuilder()..update(updates))._build();

  _$MetalinksResponse._({required this.Metalinks}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        Metalinks, r'MetalinksResponse', 'Metalinks');
  }

  @override
  MetalinksResponse rebuild(void Function(MetalinksResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetalinksResponseBuilder toBuilder() =>
      new MetalinksResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetalinksResponse && Metalinks == other.Metalinks;
  }

  @override
  int get hashCode {
    return $jf($jc(0, Metalinks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetalinksResponse')
          ..add('Metalinks', Metalinks))
        .toString();
  }
}

class MetalinksResponseBuilder
    implements Builder<MetalinksResponse, MetalinksResponseBuilder> {
  _$MetalinksResponse? _$v;

  ListBuilder<MetalinkModel?>? _Metalinks;
  ListBuilder<MetalinkModel?> get Metalinks =>
      _$this._Metalinks ??= new ListBuilder<MetalinkModel?>();
  set Metalinks(ListBuilder<MetalinkModel?>? Metalinks) =>
      _$this._Metalinks = Metalinks;

  MetalinksResponseBuilder();

  MetalinksResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Metalinks = $v.Metalinks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetalinksResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetalinksResponse;
  }

  @override
  void update(void Function(MetalinksResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetalinksResponse build() => _build();

  _$MetalinksResponse _build() {
    _$MetalinksResponse _$result;
    try {
      _$result = _$v ?? new _$MetalinksResponse._(Metalinks: Metalinks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Metalinks';
        Metalinks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MetalinksResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MetaModel extends MetaModel {
  @override
  final int current_page;
  @override
  final int from;
  @override
  final int last_page;
  @override
  final MetalinksResponse links;
  @override
  final String path;
  @override
  final int per_page;
  @override
  final int to;
  @override
  final int total;

  factory _$MetaModel([void Function(MetaModelBuilder)? updates]) =>
      (new MetaModelBuilder()..update(updates))._build();

  _$MetaModel._(
      {required this.current_page,
      required this.from,
      required this.last_page,
      required this.links,
      required this.path,
      required this.per_page,
      required this.to,
      required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        current_page, r'MetaModel', 'current_page');
    BuiltValueNullFieldError.checkNotNull(from, r'MetaModel', 'from');
    BuiltValueNullFieldError.checkNotNull(last_page, r'MetaModel', 'last_page');
    BuiltValueNullFieldError.checkNotNull(links, r'MetaModel', 'links');
    BuiltValueNullFieldError.checkNotNull(path, r'MetaModel', 'path');
    BuiltValueNullFieldError.checkNotNull(per_page, r'MetaModel', 'per_page');
    BuiltValueNullFieldError.checkNotNull(to, r'MetaModel', 'to');
    BuiltValueNullFieldError.checkNotNull(total, r'MetaModel', 'total');
  }

  @override
  MetaModel rebuild(void Function(MetaModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetaModelBuilder toBuilder() => new MetaModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetaModel &&
        current_page == other.current_page &&
        from == other.from &&
        last_page == other.last_page &&
        links == other.links &&
        path == other.path &&
        per_page == other.per_page &&
        to == other.to &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, current_page.hashCode), from.hashCode),
                            last_page.hashCode),
                        links.hashCode),
                    path.hashCode),
                per_page.hashCode),
            to.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MetaModel')
          ..add('current_page', current_page)
          ..add('from', from)
          ..add('last_page', last_page)
          ..add('links', links)
          ..add('path', path)
          ..add('per_page', per_page)
          ..add('to', to)
          ..add('total', total))
        .toString();
  }
}

class MetaModelBuilder implements Builder<MetaModel, MetaModelBuilder> {
  _$MetaModel? _$v;

  int? _current_page;
  int? get current_page => _$this._current_page;
  set current_page(int? current_page) => _$this._current_page = current_page;

  int? _from;
  int? get from => _$this._from;
  set from(int? from) => _$this._from = from;

  int? _last_page;
  int? get last_page => _$this._last_page;
  set last_page(int? last_page) => _$this._last_page = last_page;

  MetalinksResponseBuilder? _links;
  MetalinksResponseBuilder get links =>
      _$this._links ??= new MetalinksResponseBuilder();
  set links(MetalinksResponseBuilder? links) => _$this._links = links;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  int? _per_page;
  int? get per_page => _$this._per_page;
  set per_page(int? per_page) => _$this._per_page = per_page;

  int? _to;
  int? get to => _$this._to;
  set to(int? to) => _$this._to = to;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  MetaModelBuilder();

  MetaModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _current_page = $v.current_page;
      _from = $v.from;
      _last_page = $v.last_page;
      _links = $v.links.toBuilder();
      _path = $v.path;
      _per_page = $v.per_page;
      _to = $v.to;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetaModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetaModel;
  }

  @override
  void update(void Function(MetaModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetaModel build() => _build();

  _$MetaModel _build() {
    _$MetaModel _$result;
    try {
      _$result = _$v ??
          new _$MetaModel._(
              current_page: BuiltValueNullFieldError.checkNotNull(
                  current_page, r'MetaModel', 'current_page'),
              from: BuiltValueNullFieldError.checkNotNull(
                  from, r'MetaModel', 'from'),
              last_page: BuiltValueNullFieldError.checkNotNull(
                  last_page, r'MetaModel', 'last_page'),
              links: links.build(),
              path: BuiltValueNullFieldError.checkNotNull(
                  path, r'MetaModel', 'path'),
              per_page: BuiltValueNullFieldError.checkNotNull(
                  per_page, r'MetaModel', 'per_page'),
              to: BuiltValueNullFieldError.checkNotNull(to, r'MetaModel', 'to'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'MetaModel', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MetaModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
