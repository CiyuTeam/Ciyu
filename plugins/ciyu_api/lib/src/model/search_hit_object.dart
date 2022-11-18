//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/explanation.dart';
import 'package:ciyu_api/src/model/nested_meta_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_hit_object.g.dart';

/// SearchHitObject
///
/// Properties:
/// * [index] 
/// * [id] 
/// * [score] 
/// * [sortValues] 
/// * [content] 
/// * [highlightFields] 
/// * [nestedMetaData] 
/// * [routing] 
/// * [explanation] 
/// * [matchedQueries] 
abstract class SearchHitObject implements Built<SearchHitObject, SearchHitObjectBuilder> {
    @BuiltValueField(wireName: r'index')
    String? get index;

    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'score')
    double? get score;

    @BuiltValueField(wireName: r'sortValues')
    BuiltList<JsonObject>? get sortValues;

    @BuiltValueField(wireName: r'content')
    JsonObject? get content;

    @BuiltValueField(wireName: r'highlightFields')
    BuiltMap<String, BuiltList<String>>? get highlightFields;

    @BuiltValueField(wireName: r'nestedMetaData')
    NestedMetaData? get nestedMetaData;

    @BuiltValueField(wireName: r'routing')
    String? get routing;

    @BuiltValueField(wireName: r'explanation')
    Explanation? get explanation;

    @BuiltValueField(wireName: r'matchedQueries')
    BuiltList<String>? get matchedQueries;

    SearchHitObject._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SearchHitObjectBuilder b) => b;

    factory SearchHitObject([void updates(SearchHitObjectBuilder b)]) = _$SearchHitObject;

    @BuiltValueSerializer(custom: true)
    static Serializer<SearchHitObject> get serializer => _$SearchHitObjectSerializer();
}

class _$SearchHitObjectSerializer implements StructuredSerializer<SearchHitObject> {
    @override
    final Iterable<Type> types = const [SearchHitObject, _$SearchHitObject];

    @override
    final String wireName = r'SearchHitObject';

    @override
    Iterable<Object?> serialize(Serializers serializers, SearchHitObject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.index != null) {
            result
                ..add(r'index')
                ..add(serializers.serialize(object.index,
                    specifiedType: const FullType(String)));
        }
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.score != null) {
            result
                ..add(r'score')
                ..add(serializers.serialize(object.score,
                    specifiedType: const FullType(double)));
        }
        if (object.sortValues != null) {
            result
                ..add(r'sortValues')
                ..add(serializers.serialize(object.sortValues,
                    specifiedType: const FullType(BuiltList, [FullType(JsonObject)])));
        }
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(JsonObject)));
        }
        if (object.highlightFields != null) {
            result
                ..add(r'highlightFields')
                ..add(serializers.serialize(object.highlightFields,
                    specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])])));
        }
        if (object.nestedMetaData != null) {
            result
                ..add(r'nestedMetaData')
                ..add(serializers.serialize(object.nestedMetaData,
                    specifiedType: const FullType(NestedMetaData)));
        }
        if (object.routing != null) {
            result
                ..add(r'routing')
                ..add(serializers.serialize(object.routing,
                    specifiedType: const FullType(String)));
        }
        if (object.explanation != null) {
            result
                ..add(r'explanation')
                ..add(serializers.serialize(object.explanation,
                    specifiedType: const FullType(Explanation)));
        }
        if (object.matchedQueries != null) {
            result
                ..add(r'matchedQueries')
                ..add(serializers.serialize(object.matchedQueries,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        return result;
    }

    @override
    SearchHitObject deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SearchHitObjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'index':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.index = valueDes;
                    break;
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'score':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.score = valueDes;
                    break;
                case r'sortValues':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(JsonObject)])) as BuiltList<JsonObject>;
                    result.sortValues.replace(valueDes);
                    break;
                case r'content':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(JsonObject)) as JsonObject;
                    result.content = valueDes;
                    break;
                case r'highlightFields':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])])) as BuiltMap<String, BuiltList<String>>;
                    result.highlightFields.replace(valueDes);
                    break;
                case r'nestedMetaData':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(NestedMetaData)) as NestedMetaData;
                    result.nestedMetaData.replace(valueDes);
                    break;
                case r'routing':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.routing = valueDes;
                    break;
                case r'explanation':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Explanation)) as Explanation;
                    result.explanation.replace(valueDes);
                    break;
                case r'matchedQueries':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.matchedQueries.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

