// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LinksModel> _$linksModelSerializer = new _$LinksModelSerializer();

class _$LinksModelSerializer implements StructuredSerializer<LinksModel> {
  @override
  final Iterable<Type> types = const [LinksModel, _$LinksModel];
  @override
  final String wireName = 'LinksModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LinksModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.first;
    if (value != null) {
      result
        ..add('first')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.last;
    if (value != null) {
      result
        ..add('last')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prev;
    if (value != null) {
      result
        ..add('prev')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LinksModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinksModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prev':
          result.prev = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$LinksModel extends LinksModel {
  @override
  final String? first;
  @override
  final String? last;
  @override
  final String? prev;
  @override
  final String? next;

  factory _$LinksModel([void Function(LinksModelBuilder)? updates]) =>
      (new LinksModelBuilder()..update(updates))._build();

  _$LinksModel._({this.first, this.last, this.prev, this.next}) : super._();

  @override
  LinksModel rebuild(void Function(LinksModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinksModelBuilder toBuilder() => new LinksModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LinksModel &&
        first == other.first &&
        last == other.last &&
        prev == other.prev &&
        next == other.next;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, first.hashCode), last.hashCode), prev.hashCode),
        next.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LinksModel')
          ..add('first', first)
          ..add('last', last)
          ..add('prev', prev)
          ..add('next', next))
        .toString();
  }
}

class LinksModelBuilder implements Builder<LinksModel, LinksModelBuilder> {
  _$LinksModel? _$v;

  String? _first;
  String? get first => _$this._first;
  set first(String? first) => _$this._first = first;

  String? _last;
  String? get last => _$this._last;
  set last(String? last) => _$this._last = last;

  String? _prev;
  String? get prev => _$this._prev;
  set prev(String? prev) => _$this._prev = prev;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  LinksModelBuilder();

  LinksModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _first = $v.first;
      _last = $v.last;
      _prev = $v.prev;
      _next = $v.next;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LinksModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LinksModel;
  }

  @override
  void update(void Function(LinksModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LinksModel build() => _build();

  _$LinksModel _build() {
    final _$result = _$v ??
        new _$LinksModel._(first: first, last: last, prev: prev, next: next);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
