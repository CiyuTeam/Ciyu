//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/user.dart';
import 'package:ciyu_api/src/model/create_meet_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_meet_request.g.dart';

/// CreateMeetRequest
///
/// Properties:
/// * [user] 
/// * [createMeetDto] 
abstract class CreateMeetRequest implements Built<CreateMeetRequest, CreateMeetRequestBuilder> {
    @BuiltValueField(wireName: r'user')
    User? get user;

    @BuiltValueField(wireName: r'createMeetDto')
    CreateMeetDto? get createMeetDto;

    CreateMeetRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CreateMeetRequestBuilder b) => b;

    factory CreateMeetRequest([void updates(CreateMeetRequestBuilder b)]) = _$CreateMeetRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<CreateMeetRequest> get serializer => _$CreateMeetRequestSerializer();
}

class _$CreateMeetRequestSerializer implements StructuredSerializer<CreateMeetRequest> {
    @override
    final Iterable<Type> types = const [CreateMeetRequest, _$CreateMeetRequest];

    @override
    final String wireName = r'CreateMeetRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, CreateMeetRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.user != null) {
            result
                ..add(r'user')
                ..add(serializers.serialize(object.user,
                    specifiedType: const FullType(User)));
        }
        if (object.createMeetDto != null) {
            result
                ..add(r'createMeetDto')
                ..add(serializers.serialize(object.createMeetDto,
                    specifiedType: const FullType(CreateMeetDto)));
        }
        return result;
    }

    @override
    CreateMeetRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CreateMeetRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'user':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(User)) as User;
                    result.user.replace(valueDes);
                    break;
                case r'createMeetDto':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(CreateMeetDto)) as CreateMeetDto;
                    result.createMeetDto.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

