//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ciyu_api/src/model/search_hit_object.dart';
import 'package:ciyu_api/src/model/suggest.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_hits_object.g.dart';

/// SearchHitsObject
///
/// Properties:
/// * [searchHits] 
/// * [totalHitsRelation] 
/// * [suggest] 
/// * [totalHits] 
/// * [maxScore] 
/// * [aggregations] 
/// * [empty] 
abstract class SearchHitsObject implements Built<SearchHitsObject, SearchHitsObjectBuilder> {
    @BuiltValueField(wireName: r'searchHits')
    BuiltList<SearchHitObject>? get searchHits;

    @BuiltValueField(wireName: r'totalHitsRelation')
    SearchHitsObjectTotalHitsRelationEnum? get totalHitsRelation;
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

    SearchHitsObject._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SearchHitsObjectBuilder b) => b;

    factory SearchHitsObject([void updates(SearchHitsObjectBuilder b)]) = _$SearchHitsObject;

    @BuiltValueSerializer(custom: true)
    static Serializer<SearchHitsObject> get serializer => _$SearchHitsObjectSerializer();
}

class _$SearchHitsObjectSerializer implements StructuredSerializer<SearchHitsObject> {
    @override
    final Iterable<Type> types = const [SearchHitsObject, _$SearchHitsObject];

    @override
    final String wireName = r'SearchHitsObject';

    @override
    Iterable<Object?> serialize(Serializers serializers, SearchHitsObject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.searchHits != null) {
            result
                ..add(r'searchHits')
                ..add(serializers.serialize(object.searchHits,
                    specifiedType: const FullType(BuiltList, [FullType(SearchHitObject)])));
        }
        if (object.totalHitsRelation != null) {
            result
                ..add(r'totalHitsRelation')
                ..add(serializers.serialize(object.totalHitsRelation,
                    specifiedType: const FullType(SearchHitsObjectTotalHitsRelationEnum)));
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
    SearchHitsObject deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SearchHitsObjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'searchHits':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(SearchHitObject)])) as BuiltList<SearchHitObject>;
                    result.searchHits.replace(valueDes);
                    break;
                case r'totalHitsRelation':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(SearchHitsObjectTotalHitsRelationEnum)) as SearchHitsObjectTotalHitsRelationEnum;
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

class SearchHitsObjectTotalHitsRelationEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'EQUAL_TO')
  static const SearchHitsObjectTotalHitsRelationEnum EQUAL_TO = _$searchHitsObjectTotalHitsRelationEnum_EQUAL_TO;
  @BuiltValueEnumConst(wireName: r'GREATER_THAN_OR_EQUAL_TO')
  static const SearchHitsObjectTotalHitsRelationEnum GREATER_THAN_OR_EQUAL_TO = _$searchHitsObjectTotalHitsRelationEnum_GREATER_THAN_OR_EQUAL_TO;
  @BuiltValueEnumConst(wireName: r'OFF')
  static const SearchHitsObjectTotalHitsRelationEnum OFF = _$searchHitsObjectTotalHitsRelationEnum_OFF;

  static Serializer<SearchHitsObjectTotalHitsRelationEnum> get serializer => _$searchHitsObjectTotalHitsRelationEnumSerializer;

  const SearchHitsObjectTotalHitsRelationEnum._(String name): super(name);

  static BuiltSet<SearchHitsObjectTotalHitsRelationEnum> get values => _$searchHitsObjectTotalHitsRelationEnumValues;
  static SearchHitsObjectTotalHitsRelationEnum valueOf(String name) => _$searchHitsObjectTotalHitsRelationEnumValueOf(name);
}

