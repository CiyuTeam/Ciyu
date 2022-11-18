// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_hits_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SearchHitsObjectTotalHitsRelationEnum
    _$searchHitsObjectTotalHitsRelationEnum_EQUAL_TO =
    const SearchHitsObjectTotalHitsRelationEnum._('EQUAL_TO');
const SearchHitsObjectTotalHitsRelationEnum
    _$searchHitsObjectTotalHitsRelationEnum_GREATER_THAN_OR_EQUAL_TO =
    const SearchHitsObjectTotalHitsRelationEnum._('GREATER_THAN_OR_EQUAL_TO');
const SearchHitsObjectTotalHitsRelationEnum
    _$searchHitsObjectTotalHitsRelationEnum_OFF =
    const SearchHitsObjectTotalHitsRelationEnum._('OFF');

SearchHitsObjectTotalHitsRelationEnum
    _$searchHitsObjectTotalHitsRelationEnumValueOf(String name) {
  switch (name) {
    case 'EQUAL_TO':
      return _$searchHitsObjectTotalHitsRelationEnum_EQUAL_TO;
    case 'GREATER_THAN_OR_EQUAL_TO':
      return _$searchHitsObjectTotalHitsRelationEnum_GREATER_THAN_OR_EQUAL_TO;
    case 'OFF':
      return _$searchHitsObjectTotalHitsRelationEnum_OFF;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SearchHitsObjectTotalHitsRelationEnum>
    _$searchHitsObjectTotalHitsRelationEnumValues =
    new BuiltSet<SearchHitsObjectTotalHitsRelationEnum>(const <
        SearchHitsObjectTotalHitsRelationEnum>[
  _$searchHitsObjectTotalHitsRelationEnum_EQUAL_TO,
  _$searchHitsObjectTotalHitsRelationEnum_GREATER_THAN_OR_EQUAL_TO,
  _$searchHitsObjectTotalHitsRelationEnum_OFF,
]);

Serializer<SearchHitsObjectTotalHitsRelationEnum>
    _$searchHitsObjectTotalHitsRelationEnumSerializer =
    new _$SearchHitsObjectTotalHitsRelationEnumSerializer();

class _$SearchHitsObjectTotalHitsRelationEnumSerializer
    implements PrimitiveSerializer<SearchHitsObjectTotalHitsRelationEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EQUAL_TO': 'EQUAL_TO',
    'GREATER_THAN_OR_EQUAL_TO': 'GREATER_THAN_OR_EQUAL_TO',
    'OFF': 'OFF',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EQUAL_TO': 'EQUAL_TO',
    'GREATER_THAN_OR_EQUAL_TO': 'GREATER_THAN_OR_EQUAL_TO',
    'OFF': 'OFF',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SearchHitsObjectTotalHitsRelationEnum
  ];
  @override
  final String wireName = 'SearchHitsObjectTotalHitsRelationEnum';

  @override
  Object serialize(
          Serializers serializers, SearchHitsObjectTotalHitsRelationEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SearchHitsObjectTotalHitsRelationEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SearchHitsObjectTotalHitsRelationEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SearchHitsObject extends SearchHitsObject {
  @override
  final BuiltList<SearchHitObject>? searchHits;
  @override
  final SearchHitsObjectTotalHitsRelationEnum? totalHitsRelation;
  @override
  final Suggest? suggest;
  @override
  final int? totalHits;
  @override
  final double? maxScore;
  @override
  final JsonObject? aggregations;
  @override
  final bool? empty;

  factory _$SearchHitsObject(
          [void Function(SearchHitsObjectBuilder)? updates]) =>
      (new SearchHitsObjectBuilder()..update(updates))._build();

  _$SearchHitsObject._(
      {this.searchHits,
      this.totalHitsRelation,
      this.suggest,
      this.totalHits,
      this.maxScore,
      this.aggregations,
      this.empty})
      : super._();

  @override
  SearchHitsObject rebuild(void Function(SearchHitsObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchHitsObjectBuilder toBuilder() =>
      new SearchHitsObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchHitsObject &&
        searchHits == other.searchHits &&
        totalHitsRelation == other.totalHitsRelation &&
        suggest == other.suggest &&
        totalHits == other.totalHits &&
        maxScore == other.maxScore &&
        aggregations == other.aggregations &&
        empty == other.empty;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, searchHits.hashCode),
                            totalHitsRelation.hashCode),
                        suggest.hashCode),
                    totalHits.hashCode),
                maxScore.hashCode),
            aggregations.hashCode),
        empty.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchHitsObject')
          ..add('searchHits', searchHits)
          ..add('totalHitsRelation', totalHitsRelation)
          ..add('suggest', suggest)
          ..add('totalHits', totalHits)
          ..add('maxScore', maxScore)
          ..add('aggregations', aggregations)
          ..add('empty', empty))
        .toString();
  }
}

class SearchHitsObjectBuilder
    implements Builder<SearchHitsObject, SearchHitsObjectBuilder> {
  _$SearchHitsObject? _$v;

  ListBuilder<SearchHitObject>? _searchHits;
  ListBuilder<SearchHitObject> get searchHits =>
      _$this._searchHits ??= new ListBuilder<SearchHitObject>();
  set searchHits(ListBuilder<SearchHitObject>? searchHits) =>
      _$this._searchHits = searchHits;

  SearchHitsObjectTotalHitsRelationEnum? _totalHitsRelation;
  SearchHitsObjectTotalHitsRelationEnum? get totalHitsRelation =>
      _$this._totalHitsRelation;
  set totalHitsRelation(
          SearchHitsObjectTotalHitsRelationEnum? totalHitsRelation) =>
      _$this._totalHitsRelation = totalHitsRelation;

  SuggestBuilder? _suggest;
  SuggestBuilder get suggest => _$this._suggest ??= new SuggestBuilder();
  set suggest(SuggestBuilder? suggest) => _$this._suggest = suggest;

  int? _totalHits;
  int? get totalHits => _$this._totalHits;
  set totalHits(int? totalHits) => _$this._totalHits = totalHits;

  double? _maxScore;
  double? get maxScore => _$this._maxScore;
  set maxScore(double? maxScore) => _$this._maxScore = maxScore;

  JsonObject? _aggregations;
  JsonObject? get aggregations => _$this._aggregations;
  set aggregations(JsonObject? aggregations) =>
      _$this._aggregations = aggregations;

  bool? _empty;
  bool? get empty => _$this._empty;
  set empty(bool? empty) => _$this._empty = empty;

  SearchHitsObjectBuilder() {
    SearchHitsObject._defaults(this);
  }

  SearchHitsObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchHits = $v.searchHits?.toBuilder();
      _totalHitsRelation = $v.totalHitsRelation;
      _suggest = $v.suggest?.toBuilder();
      _totalHits = $v.totalHits;
      _maxScore = $v.maxScore;
      _aggregations = $v.aggregations;
      _empty = $v.empty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchHitsObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchHitsObject;
  }

  @override
  void update(void Function(SearchHitsObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchHitsObject build() => _build();

  _$SearchHitsObject _build() {
    _$SearchHitsObject _$result;
    try {
      _$result = _$v ??
          new _$SearchHitsObject._(
              searchHits: _searchHits?.build(),
              totalHitsRelation: totalHitsRelation,
              suggest: _suggest?.build(),
              totalHits: totalHits,
              maxScore: maxScore,
              aggregations: aggregations,
              empty: empty);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'searchHits';
        _searchHits?.build();

        _$failedField = 'suggest';
        _suggest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchHitsObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
