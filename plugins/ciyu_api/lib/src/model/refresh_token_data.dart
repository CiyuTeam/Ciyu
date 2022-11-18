//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_token_data.g.dart';

/// RefreshTokenData
///
/// Properties:
/// * [refreshToken] 
abstract class RefreshTokenData implements Built<RefreshTokenData, RefreshTokenDataBuilder> {
    @BuiltValueField(wireName: r'refreshToken')
    String? get refreshToken;

    RefreshTokenData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RefreshTokenDataBuilder b) => b;

    factory RefreshTokenData([void updates(RefreshTokenDataBuilder b)]) = _$RefreshTokenData;

    @BuiltValueSerializer(custom: true)
    static Serializer<RefreshTokenData> get serializer => _$RefreshTokenDataSerializer();
}

class _$RefreshTokenDataSerializer implements StructuredSerializer<RefreshTokenData> {
    @override
    final Iterable<Type> types = const [RefreshTokenData, _$RefreshTokenData];

    @override
    final String wireName = r'RefreshTokenData';

    @override
    Iterable<Object?> serialize(Serializers serializers, RefreshTokenData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.refreshToken != null) {
            result
                ..add(r'refreshToken')
                ..add(serializers.serialize(object.refreshToken,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    RefreshTokenData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RefreshTokenDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'refreshToken':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.refreshToken = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

