//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'explanation.g.dart';

/// Explanation
///
/// Properties:
/// * [match] 
/// * [value] 
/// * [description] 
/// * [details] 
abstract class Explanation implements Built<Explanation, ExplanationBuilder> {
    @BuiltValueField(wireName: r'match')
    bool? get match;

    @BuiltValueField(wireName: r'value')
    double? get value;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'details')
    BuiltList<Explanation>? get details;

    Explanation._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ExplanationBuilder b) => b;

    factory Explanation([void updates(ExplanationBuilder b)]) = _$Explanation;

    @BuiltValueSerializer(custom: true)
    static Serializer<Explanation> get serializer => _$ExplanationSerializer();
}

class _$ExplanationSerializer implements StructuredSerializer<Explanation> {
    @override
    final Iterable<Type> types = const [Explanation, _$Explanation];

    @override
    final String wireName = r'Explanation';

    @override
    Iterable<Object?> serialize(Serializers serializers, Explanation object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.match != null) {
            result
                ..add(r'match')
                ..add(serializers.serialize(object.match,
                    specifiedType: const FullType(bool)));
        }
        if (object.value != null) {
            result
                ..add(r'value')
                ..add(serializers.serialize(object.value,
                    specifiedType: const FullType(double)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.details != null) {
            result
                ..add(r'details')
                ..add(serializers.serialize(object.details,
                    specifiedType: const FullType(BuiltList, [FullType(Explanation)])));
        }
        return result;
    }

    @override
    Explanation deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ExplanationBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'match':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.match = valueDes;
                    break;
                case r'value':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.value = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'details':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Explanation)])) as BuiltList<Explanation>;
                    result.details.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

