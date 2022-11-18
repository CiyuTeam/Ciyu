//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/phonetic.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'word.g.dart';

/// Word
///
/// Properties:
/// * [id] 
/// * [phonetics] 
abstract class Word implements Built<Word, WordBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'phonetics')
    BuiltList<Phonetic>? get phonetics;

    Word._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(WordBuilder b) => b;

    factory Word([void updates(WordBuilder b)]) = _$Word;

    @BuiltValueSerializer(custom: true)
    static Serializer<Word> get serializer => _$WordSerializer();
}

class _$WordSerializer implements StructuredSerializer<Word> {
    @override
    final Iterable<Type> types = const [Word, _$Word];

    @override
    final String wireName = r'Word';

    @override
    Iterable<Object?> serialize(Serializers serializers, Word object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.phonetics != null) {
            result
                ..add(r'phonetics')
                ..add(serializers.serialize(object.phonetics,
                    specifiedType: const FullType(BuiltList, [FullType(Phonetic)])));
        }
        return result;
    }

    @override
    Word deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = WordBuilder();

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
                case r'phonetics':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Phonetic)])) as BuiltList<Phonetic>;
                    result.phonetics.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

