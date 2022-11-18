//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/search_hit_article.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ciyu_api/src/model/suggest.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_hits_article.g.dart';

/// SearchHitsArticle
///
/// Properties:
/// * [searchHits] 
/// * [totalHitsRelation] 
/// * [suggest] 
/// * [totalHits] 
/// * [maxScore] 
/// * [aggregations] 
/// * [empty] 
abstract class SearchHitsArticle implements Built<SearchHitsArticle, SearchHitsArticleBuilder> {
    @BuiltValueField(wireName: r'searchHits')
    BuiltList<SearchHitArticle>? get searchHits;

    @BuiltValueField(wireName: r'totalHitsRelation')
    SearchHitsArticleTotalHitsRelationEnum? get totalHitsRelation;
    // enum totalHitsRelationEnum {  EQUAL_TO,  GREATER_THAN_OR_EQUAL_TO,  OFF,  };

    @BuiltValueField(wireName: r'suggest')
    Suggest? get suggest;

    @BuiltValueField(wireName: r'totalHits')
    int? get totalHits;

    @BuiltValueField(wireName: r'maxScore')
    double? get maxScore;

    @BuiltValueField(wireName: r'aggregations')
    JsonObject? get aggregations;

    @BuiltValueField(wireName: r'empty')
    bool? get empty;

    SearchHitsArticle._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SearchHitsArticleBuilder b) => b;

    factory SearchHitsArticle([void updates(SearchHitsArticleBuilder b)]) = _$SearchHitsArticle;

    @BuiltValueSerializer(custom: true)
    static Serializer<SearchHitsArticle> get serializer => _$SearchHitsArticleSerializer();
}

class _$SearchHitsArticleSerializer implements StructuredSerializer<SearchHitsArticle> {
    @override
    final Iterable<Type> types = const [SearchHitsArticle, _$SearchHitsArticle];

    @override
    final String wireName = r'SearchHitsArticle';

    @override
    Iterable<Object?> serialize(Serializers serializers, SearchHitsArticle object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.searchHits != null) {
            result
                ..add(r'searchHits')
                ..add(serializers.serialize(object.searchHits,
                    specifiedType: const FullType(BuiltList, [FullType(SearchHitArticle)])));
        }
        if (object.totalHitsRelation != null) {
            result
                ..add(r'totalHitsRelation')
                ..add(serializers.serialize(object.totalHitsRelation,
                    specifiedType: const FullType(SearchHitsArticleTotalHitsRelationEnum)));
        }
        if (object.suggest != null) {
            result
                ..add(r'suggest')
                ..add(serializers.serialize(object.suggest,
                    specifiedType: const FullType(Suggest)));
        }
        if (object.totalHits != null) {
            result
                ..add(r'totalHits')
                ..add(serializers.serialize(object.totalHits,
                    specifiedType: const FullType(int)));
        }
        if (object.maxScore != null) {
            result
                ..add(r'maxScore')
                ..add(serializers.serialize(object.maxScore,
                    specifiedType: const FullType(double)));
        }
        if (object.aggregations != null) {
            result
                ..add(r'aggregations')
                ..add(serializers.serialize(object.aggregations,
                    specifiedType: const FullType(JsonObject)));
        }
        if (object.empty != null) {
            result
                ..add(r'empty')
                ..add(serializers.serialize(object.empty,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    SearchHitsArticle deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SearchHitsArticleBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'searchHits':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(SearchHitArticle)])) as BuiltList<SearchHitArticle>;
                    result.searchHits.replace(valueDes);
                    break;
                case r'totalHitsRelation':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(SearchHitsArticleTotalHitsRelationEnum)) as SearchHitsArticleTotalHitsRelationEnum;
                    result.totalHitsRelation = valueDes;
                    break;
                case r'suggest':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Suggest)) as Suggest;
                    result.suggest.replace(valueDes);
                    break;
                case r'totalHits':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.totalHits = valueDes;
                    break;
                case r'maxScore':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.maxScore = valueDes;
                    break;
                case r'aggregations':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(JsonObject)) as JsonObject;
                    result.aggregations = valueDes;
                    break;
                case r'empty':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.empty = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

class SearchHitsArticleTotalHitsRelationEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'EQUAL_TO')
  static const SearchHitsArticleTotalHitsRelationEnum EQUAL_TO = _$searchHitsArticleTotalHitsRelationEnum_EQUAL_TO;
  @BuiltValueEnumConst(wireName: r'GREATER_THAN_OR_EQUAL_TO')
  static const SearchHitsArticleTotalHitsRelationEnum GREATER_THAN_OR_EQUAL_TO = _$searchHitsArticleTotalHitsRelationEnum_GREATER_THAN_OR_EQUAL_TO;
  @BuiltValueEnumConst(wireName: r'OFF')
  static const SearchHitsArticleTotalHitsRelationEnum OFF = _$searchHitsArticleTotalHitsRelationEnum_OFF;

  static Serializer<SearchHitsArticleTotalHitsRelationEnum> get serializer => _$searchHitsArticleTotalHitsRelationEnumSerializer;

  const SearchHitsArticleTotalHitsRelationEnum._(String name): super(name);

  static BuiltSet<SearchHitsArticleTotalHitsRelationEnum> get values => _$searchHitsArticleTotalHitsRelationEnumValues;
  static SearchHitsArticleTotalHitsRelationEnum valueOf(String name) => _$searchHitsArticleTotalHitsRelationEnumValueOf(name);
}

