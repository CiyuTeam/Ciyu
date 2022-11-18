//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/word.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meaning.g.dart';

/// Meaning
///
/// Properties:
/// * [id] 
/// * [definition] 
/// * [word] 
abstract class Meaning implements Built<Meaning, MeaningBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'definition')
    String? get definition;

    @BuiltValueField(wireName: r'word')
    Word? get word;

    Meaning._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MeaningBuilder b) => b;

    factory Meaning([void updates(MeaningBuilder b)]) = _$Meaning;

    @BuiltValueSerializer(custom: true)
    static Serializer<Meaning> get serializer => _$MeaningSerializer();
}

class _$MeaningSerializer implements StructuredSerializer<Meaning> {
    @override
    final Iterable<Type> types = const [Meaning, _$Meaning];

    @override
    final String wireName = r'Meaning';

    @override
    Iterable<Object?> serialize(Serializers serializers, Meaning object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.definition != null) {
            result
                ..add(r'definition')
                ..add(serializers.serialize(object.definition,
                    specifiedType: const FullType(String)));
        }
        if (object.word != null) {
            result
                ..add(r'word')
                ..add(serializers.serialize(object.word,
                    specifiedType: const FullType(Word)));
        }
        return result;
    }

    @override
    Meaning deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MeaningBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'definition':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.definition = valueDes;
                    break;
                case r'word':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Word)) as Word;
                    result.word.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

