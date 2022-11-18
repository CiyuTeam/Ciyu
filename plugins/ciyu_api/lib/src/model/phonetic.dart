//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/word.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'phonetic.g.dart';

/// Phonetic
///
/// Properties:
/// * [id] 
/// * [locale] 
/// * [symbol] 
/// * [audio] 
/// * [word] 
abstract class Phonetic implements Built<Phonetic, PhoneticBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'locale')
    String? get locale;

    @BuiltValueField(wireName: r'symbol')
    String? get symbol;

    @BuiltValueField(wireName: r'audio')
    String? get audio;

    @BuiltValueField(wireName: r'word')
    Word? get word;

    Phonetic._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PhoneticBuilder b) => b;

    factory Phonetic([void updates(PhoneticBuilder b)]) = _$Phonetic;

    @BuiltValueSerializer(custom: true)
    static Serializer<Phonetic> get serializer => _$PhoneticSerializer();
}

class _$PhoneticSerializer implements StructuredSerializer<Phonetic> {
    @override
    final Iterable<Type> types = const [Phonetic, _$Phonetic];

    @override
    final String wireName = r'Phonetic';

    @override
    Iterable<Object?> serialize(Serializers serializers, Phonetic object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.locale != null) {
            result
                ..add(r'locale')
                ..add(serializers.serialize(object.locale,
                    specifiedType: const FullType(String)));
        }
        if (object.symbol != null) {
            result
                ..add(r'symbol')
                ..add(serializers.serialize(object.symbol,
                    specifiedType: const FullType(String)));
        }
        if (object.audio != null) {
            result
                ..add(r'audio')
                ..add(serializers.serialize(object.audio,
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
    Phonetic deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PhoneticBuilder();

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
                case r'locale':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.locale = valueDes;
                    break;
                case r'symbol':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.symbol = valueDes;
                    break;
                case r'audio':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.audio = valueDes;
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

