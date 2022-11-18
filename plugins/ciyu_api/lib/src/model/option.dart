//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'option.g.dart';

/// Option
///
/// Properties:
/// * [text] 
/// * [highlighted] 
/// * [score] 
/// * [collateMatch] 
abstract class Option implements Built<Option, OptionBuilder> {
    @BuiltValueField(wireName: r'text')
    String? get text;

    @BuiltValueField(wireName: r'highlighted')
    String? get highlighted;

    @BuiltValueField(wireName: r'score')
    double? get score;

    @BuiltValueField(wireName: r'collateMatch')
    bool? get collateMatch;

    Option._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OptionBuilder b) => b;

    factory Option([void updates(OptionBuilder b)]) = _$Option;

    @BuiltValueSerializer(custom: true)
    static Serializer<Option> get serializer => _$OptionSerializer();
}

class _$OptionSerializer implements StructuredSerializer<Option> {
    @override
    final Iterable<Type> types = const [Option, _$Option];

    @override
    final String wireName = r'Option';

    @override
    Iterable<Object?> serialize(Serializers serializers, Option object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.text != null) {
            result
                ..add(r'text')
                ..add(serializers.serialize(object.text,
                    specifiedType: const FullType(String)));
        }
        if (object.highlighted != null) {
            result
                ..add(r'highlighted')
                ..add(serializers.serialize(object.highlighted,
                    specifiedType: const FullType(String)));
        }
        if (object.score != null) {
            result
                ..add(r'score')
                ..add(serializers.serialize(object.score,
                    specifiedType: const FullType(double)));
        }
        if (object.collateMatch != null) {
            result
                ..add(r'collateMatch')
                ..add(serializers.serialize(object.collateMatch,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    Option deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OptionBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'text':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.text = valueDes;
                    break;
                case r'highlighted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.highlighted = valueDes;
                    break;
                case r'score':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.score = valueDes;
                    break;
                case r'collateMatch':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.collateMatch = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

