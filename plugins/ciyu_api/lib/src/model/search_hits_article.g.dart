// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_hits_article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SearchHitsArticleTotalHitsRelationEnum
    _$searchHitsArticleTotalHitsRelationEnum_EQUAL_TO =
    const SearchHitsArticleTotalHitsRelationEnum._('EQUAL_TO');
const SearchHitsArticleTotalHitsRelationEnum
    _$searchHitsArticleTotalHitsRelationEnum_GREATER_THAN_OR_EQUAL_TO =
    const SearchHitsArticleTotalHitsRelationEnum._('GREATER_THAN_OR_EQUAL_TO');
const SearchHitsArticleTotalHitsRelationEnum
    _$searchHitsArticleTotalHitsRelationEnum_OFF =
    const SearchHitsArticleTotalHitsRelationEnum._('OFF');

SearchHitsArticleTotalHitsRelationEnum
    _$searchHitsArticleTotalHitsRelationEnumValueOf(String name) {
  switch (name) {
    case 'EQUAL_TO':
      return _$searchHitsArticleTotalHitsRelationEnum_EQUAL_TO;
    case 'GREATER_THAN_OR_EQUAL_TO':
      return _$searchHitsArticleTotalHitsRelationEnum_GREATER_THAN_OR_EQUAL_TO;
    case 'OFF':
      return _$searchHitsArticleTotalHitsRelationEnum_OFF;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SearchHitsArticleTotalHitsRelationEnum>
    _$searchHitsArticleTotalHitsRelationEnumValues =
    new BuiltSet<SearchHitsArticleTotalHitsRelationEnum>(const <
        SearchHitsArticleTotalHitsRelationEnum>[
  _$searchHitsArticleTotalHitsRelationEnum_EQUAL_TO,
  _$searchHitsArticleTotalHitsRelationEnum_GREATER_THAN_OR_EQUAL_TO,
  _$searchHitsArticleTotalHitsRelationEnum_OFF,
]);

Serializer<SearchHitsArticleTotalHitsRelationEnum>
    _$searchHitsArticleTotalHitsRelationEnumSerializer =
    new _$SearchHitsArticleTotalHitsRelationEnumSerializer();

class _$SearchHitsArticleTotalHitsRelationEnumSerializer
    implements PrimitiveSerializer<SearchHitsArticleTotalHitsRelationEnum> {
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
    SearchHitsArticleTotalHitsRelationEnum
  ];
  @override
  final String wireName = 'SearchHitsArticleTotalHitsRelationEnum';

  @override
  Object serialize(Serializers serializers,
          SearchHitsArticleTotalHitsRelationEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SearchHitsArticleTotalHitsRelationEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SearchHitsArticleTotalHitsRelationEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SearchHitsArticle extends SearchHitsArticle {
  @override
  final BuiltList<SearchHitArticle>? searchHits;
  @override
  final SearchHitsArticleTotalHitsRelationEnum? totalHitsRelation;
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

  factory _$SearchHitsArticle(
          [void Function(SearchHitsArticleBuilder)? updates]) =>
      (new SearchHitsArticleBuilder()..update(updates))._build();

  _$SearchHitsArticle._(
      {this.searchHits,
      this.totalHitsRelation,
      this.suggest,
      this.totalHits,
      this.maxScore,
      this.aggregations,
      this.empty})
      : super._();

  @override
  SearchHitsArticle rebuild(void Function(SearchHitsArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchHitsArticleBuilder toBuilder() =>
      new SearchHitsArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchHitsArticle &&
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
    return (newBuiltValueToStringHelper(r'SearchHitsArticle')
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

class SearchHitsArticleBuilder
    implements Builder<SearchHitsArticle, SearchHitsArticleBuilder> {
  _$SearchHitsArticle? _$v;

  ListBuilder<SearchHitArticle>? _searchHits;
  ListBuilder<SearchHitArticle> get searchHits =>
      _$this._searchHits ??= new ListBuilder<SearchHitArticle>();
  set searchHits(ListBuilder<SearchHitArticle>? searchHits) =>
      _$this._searchHits = searchHits;

  SearchHitsArticleTotalHitsRelationEnum? _totalHitsRelation;
  SearchHitsArticleTotalHitsRelationEnum? get totalHitsRelation =>
      _$this._totalHitsRelation;
  set totalHitsRelation(
          SearchHitsArticleTotalHitsRelationEnum? totalHitsRelation) =>
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

  SearchHitsArticleBuilder() {
    SearchHitsArticle._defaults(this);
  }

  SearchHitsArticleBuilder get _$this {
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
  void replace(SearchHitsArticle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchHitsArticle;
  }

  @override
  void update(void Function(SearchHitsArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchHitsArticle build() => _build();

  _$SearchHitsArticle _build() {
    _$SearchHitsArticle _$result;
    try {
      _$result = _$v ??
          new _$SearchHitsArticle._(
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
            r'SearchHitsArticle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
