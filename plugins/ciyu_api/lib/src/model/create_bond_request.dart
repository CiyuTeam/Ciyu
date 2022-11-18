//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/user.dart';
import 'package:ciyu_api/src/model/create_bond_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_bond_request.g.dart';

/// CreateBondRequest
///
/// Properties:
/// * [user] 
/// * [createBondDto] 
abstract class CreateBondRequest implements Built<CreateBondRequest, CreateBondRequestBuilder> {
    @BuiltValueField(wireName: r'user')
    User? get user;

    @BuiltValueField(wireName: r'createBondDto')
    CreateBondDto? get createBondDto;

    CreateBondRequest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CreateBondRequestBuilder b) => b;

    factory CreateBondRequest([void updates(CreateBondRequestBuilder b)]) = _$CreateBondRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<CreateBondRequest> get serializer => _$CreateBondRequestSerializer();
}

class _$CreateBondRequestSerializer implements StructuredSerializer<CreateBondRequest> {
    @override
    final Iterable<Type> types = const [CreateBondRequest, _$CreateBondRequest];

    @override
    final String wireName = r'CreateBondRequest';

    @override
    Iterable<Object?> serialize(Serializers serializers, CreateBondRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.user != null) {
            result
                ..add(r'user')
                ..add(serializers.serialize(object.user,
                    specifiedType: const FullType(User)));
        }
        if (object.createBondDto != null) {
            result
                ..add(r'createBondDto')
                ..add(serializers.serialize(object.createBondDto,
                    specifiedType: const FullType(CreateBondDto)));
        }
        return result;
    }

    @override
    CreateBondRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CreateBondRequestBuilder();

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
                case r'createBondDto':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(CreateBondDto)) as CreateBondDto;
                    result.createBondDto.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

