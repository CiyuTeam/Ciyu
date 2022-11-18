//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_meets_dto.g.dart';

/// CreateMeetsDto
///
/// Properties:
/// * [articleId] 
/// * [meaningIds] 
abstract class CreateMeetsDto implements Built<CreateMeetsDto, CreateMeetsDtoBuilder> {
    @BuiltValueField(wireName: r'articleId')
    String? get articleId;

    @BuiltValueField(wireName: r'meaningIds')
    BuiltList<String>? get meaningIds;

    CreateMeetsDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CreateMeetsDtoBuilder b) => b;

    factory CreateMeetsDto([void updates(CreateMeetsDtoBuilder b)]) = _$CreateMeetsDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<CreateMeetsDto> get serializer => _$CreateMeetsDtoSerializer();
}

class _$CreateMeetsDtoSerializer implements StructuredSerializer<CreateMeetsDto> {
    @override
    final Iterable<Type> types = const [CreateMeetsDto, _$CreateMeetsDto];

    @override
    final String wireName = r'CreateMeetsDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, CreateMeetsDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.articleId != null) {
            result
                ..add(r'articleId')
                ..add(serializers.serialize(object.articleId,
                    specifiedType: const FullType(String)));
        }
        if (object.meaningIds != null) {
            result
                ..add(r'meaningIds')
                ..add(serializers.serialize(object.meaningIds,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        return result;
    }

    @override
    CreateMeetsDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CreateMeetsDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'articleId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.articleId = valueDes;
                    break;
                case r'meaningIds':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.meaningIds.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

