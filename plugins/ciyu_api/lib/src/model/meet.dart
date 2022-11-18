//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/meaning.dart';
import 'package:ciyu_api/src/model/bond.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meet.g.dart';

/// Meet
///
/// Properties:
/// * [id] 
/// * [articleId] 
/// * [quality] 
/// * [createdTime] 
/// * [meaning] 
/// * [bond] 
abstract class Meet implements Built<Meet, MeetBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'articleId')
    String? get articleId;

    @BuiltValueField(wireName: r'quality')
    double? get quality;

    @BuiltValueField(wireName: r'createdTime')
    DateTime? get createdTime;

    @BuiltValueField(wireName: r'meaning')
    Meaning? get meaning;

    @BuiltValueField(wireName: r'bond')
    Bond? get bond;

    Meet._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(MeetBuilder b) => b;

    factory Meet([void updates(MeetBuilder b)]) = _$Meet;

    @BuiltValueSerializer(custom: true)
    static Serializer<Meet> get serializer => _$MeetSerializer();
}

class _$MeetSerializer implements StructuredSerializer<Meet> {
    @override
    final Iterable<Type> types = const [Meet, _$Meet];

    @override
    final String wireName = r'Meet';

    @override
    Iterable<Object?> serialize(Serializers serializers, Meet object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.articleId != null) {
            result
                ..add(r'articleId')
                ..add(serializers.serialize(object.articleId,
                    specifiedType: const FullType(String)));
        }
        if (object.quality != null) {
            result
                ..add(r'quality')
                ..add(serializers.serialize(object.quality,
                    specifiedType: const FullType(double)));
        }
        if (object.createdTime != null) {
            result
                ..add(r'createdTime')
                ..add(serializers.serialize(object.createdTime,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.meaning != null) {
            result
                ..add(r'meaning')
                ..add(serializers.serialize(object.meaning,
                    specifiedType: const FullType(Meaning)));
        }
        if (object.bond != null) {
            result
                ..add(r'bond')
                ..add(serializers.serialize(object.bond,
                    specifiedType: const FullType(Bond)));
        }
        return result;
    }

    @override
    Meet deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MeetBuilder();

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
                case r'articleId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.articleId = valueDes;
                    break;
                case r'quality':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    result.quality = valueDes;
                    break;
                case r'createdTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.createdTime = valueDes;
                    break;
                case r'meaning':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Meaning)) as Meaning;
                    result.meaning.replace(valueDes);
                    break;
                case r'bond':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Bond)) as Bond;
                    result.bond.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

