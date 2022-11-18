//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ciyu_api/src/model/meet.dart';
import 'package:ciyu_api/src/model/word.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bond.g.dart';

/// Bond
///
/// Properties:
/// * [id] 
/// * [word] 
/// * [meets] 
abstract class Bond implements Built<Bond, BondBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'word')
    Word get word;

    @BuiltValueField(wireName: r'meets')
    BuiltList<Meet>? get meets;

    Bond._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(BondBuilder b) => b;

    factory Bond([void updates(BondBuilder b)]) = _$Bond;

    @BuiltValueSerializer(custom: true)
    static Serializer<Bond> get serializer => _$BondSerializer();
}

class _$BondSerializer implements StructuredSerializer<Bond> {
    @override
    final Iterable<Type> types = const [Bond, _$Bond];

    @override
    final String wireName = r'Bond';

    @override
    Iterable<Object?> serialize(Serializers serializers, Bond object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'word')
            ..add(serializers.serialize(object.word,
                specifiedType: const FullType(Word)));
        if (object.meets != null) {
            result
                ..add(r'meets')
                ..add(serializers.serialize(object.meets,
                    specifiedType: const FullType(BuiltList, [FullType(Meet)])));
        }
        return result;
    }

    @override
    Bond deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BondBuilder();

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
                case r'meets':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Meet)])) as BuiltList<Meet>;
                    result.meets.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

