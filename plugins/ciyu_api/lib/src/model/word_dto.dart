//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/meaning.dart';
import 'package:ciyu_api/src/model/phonetic.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'word_dto.g.dart';

/// WordDto
///
/// Properties:
/// * [id] 
/// * [meanings] 
/// * [phonetics] 
/// * [hasBond] 
abstract class WordDto implements Built<WordDto, WordDtoBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'meanings')
    BuiltList<Meaning>? get meanings;

    @BuiltValueField(wireName: r'phonetics')
    BuiltList<Phonetic>? get phonetics;

    @BuiltValueField(wireName: r'hasBond')
    bool? get hasBond;

    WordDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(WordDtoBuilder b) => b;

    factory WordDto([void updates(WordDtoBuilder b)]) = _$WordDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<WordDto> get serializer => _$WordDtoSerializer();
}

class _$WordDtoSerializer implements StructuredSerializer<WordDto> {
    @override
    final Iterable<Type> types = const [WordDto, _$WordDto];

    @override
    final String wireName = r'WordDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, WordDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.meanings != null) {
            result
                ..add(r'meanings')
                ..add(serializers.serialize(object.meanings,
                    specifiedType: const FullType(BuiltList, [FullType(Meaning)])));
        }
        if (object.phonetics != null) {
            result
                ..add(r'phonetics')
                ..add(serializers.serialize(object.phonetics,
                    specifiedType: const FullType(BuiltList, [FullType(Phonetic)])));
        }
        if (object.hasBond != null) {
            result
                ..add(r'hasBond')
                ..add(serializers.serialize(object.hasBond,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    WordDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = WordDtoBuilder();

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
                case r'meanings':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Meaning)])) as BuiltList<Meaning>;
                    result.meanings.replace(valueDes);
                    break;
                case r'phonetics':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Phonetic)])) as BuiltList<Phonetic>;
                    result.phonetics.replace(valueDes);
                    break;
                case r'hasBond':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.hasBond = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

