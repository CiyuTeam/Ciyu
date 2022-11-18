//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nested_meta_data.g.dart';

/// NestedMetaData
///
/// Properties:
/// * [field] 
/// * [offset] 
/// * [child] 
abstract class NestedMetaData implements Built<NestedMetaData, NestedMetaDataBuilder> {
    @BuiltValueField(wireName: r'field')
    String? get field;

    @BuiltValueField(wireName: r'offset')
    int? get offset;

    @BuiltValueField(wireName: r'child')
    NestedMetaData? get child;

    NestedMetaData._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(NestedMetaDataBuilder b) => b;

    factory NestedMetaData([void updates(NestedMetaDataBuilder b)]) = _$NestedMetaData;

    @BuiltValueSerializer(custom: true)
    static Serializer<NestedMetaData> get serializer => _$NestedMetaDataSerializer();
}

class _$NestedMetaDataSerializer implements StructuredSerializer<NestedMetaData> {
    @override
    final Iterable<Type> types = const [NestedMetaData, _$NestedMetaData];

    @override
    final String wireName = r'NestedMetaData';

    @override
    Iterable<Object?> serialize(Serializers serializers, NestedMetaData object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.field != null) {
            result
                ..add(r'field')
                ..add(serializers.serialize(object.field,
                    specifiedType: const FullType(String)));
        }
        if (object.offset != null) {
            result
                ..add(r'offset')
                ..add(serializers.serialize(object.offset,
                    specifiedType: const FullType(int)));
        }
        if (object.child != null) {
            result
                ..add(r'child')
                ..add(serializers.serialize(object.child,
                    specifiedType: const FullType(NestedMetaData)));
        }
        return result;
    }

    @override
    NestedMetaData deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NestedMetaDataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'field':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.field = valueDes;
                    break;
                case r'offset':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.offset = valueDes;
                    break;
                case r'child':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(NestedMetaData)) as NestedMetaData;
                    result.child.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

