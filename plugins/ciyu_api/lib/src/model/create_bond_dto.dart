//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_bond_dto.g.dart';

/// CreateBondDto
///
/// Properties:
/// * [meaningId] 
/// * [articleId] 
/// * [quality] 
abstract class CreateBondDto implements Built<CreateBondDto, CreateBondDtoBuilder> {
    @BuiltValueField(wireName: r'meaningId')
    String? get meaningId;

    @BuiltValueField(wireName: r'articleId')
    String? get articleId;

    @BuiltValueField(wireName: r'quality')
    double? get quality;

    CreateBondDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CreateBondDtoBuilder b) => b;

    factory CreateBondDto([void updates(CreateBondDtoBuilder b)]) = _$CreateBondDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<CreateBondDto> get serializer => _$CreateBondDtoSerializer();
}

class _$CreateBondDtoSerializer implements StructuredSerializer<CreateBondDto> {
    @override
    final Iterable<Type> types = const [CreateBondDto, _$CreateBondDto];

    @override
    final String wireName = r'CreateBondDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, CreateBondDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.meaningId != null) {
            result
                ..add(r'meaningId')
                ..add(serializers.serialize(object.meaningId,
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
        return result;
    }

    @override
    CreateBondDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CreateBondDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'meaningId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.meaningId = valueDes;
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
            }
        }
        return result.build();
    }
}

