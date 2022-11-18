//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/word.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_bonds_dto.g.dart';

/// GetBondsDto
///
/// Properties:
/// * [id] 
/// * [word] 
/// * [strength] 
abstract class GetBondsDto implements Built<GetBondsDto, GetBondsDtoBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'word')
    Word? get word;

    @BuiltValueField(wireName: r'strength')
    double? get strength;

    GetBondsDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GetBondsDtoBuilder b) => b;

    factory GetBondsDto([void updates(GetBondsDtoBuilder b)]) = _$GetBondsDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<GetBondsDto> get serializer => _$GetBondsDtoSerializer();
}

class _$GetBondsDtoSerializer implements StructuredSerializer<GetBondsDto> {
    @override
    final Iterable<Type> types = const [GetBondsDto, _$GetBondsDto];

    @override
    final String wireName = r'GetBondsDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, GetBondsDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.word != null) {
            result
                ..add(r'word')
                ..add(serializers.serialize(object.word,
                    specifiedType: const FullType(Word)));
        }
        if (object.strength != null) {
            result
                ..add(r'strength')
                ..add(serializers.serialize(object.strength,
                    specifiedType: const FullType(double)));
        }
        return result;
    }

    @override
    GetBondsDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GetBondsDtoBuilder();

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
                case r'word':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Word)) as Word;
                    result.word.replace(valueDes);
                    break;
                case r'strength':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.strength = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

