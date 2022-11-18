//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort.g.dart';

/// Sort
///
/// Properties:
/// * [empty] 
/// * [unsorted] 
/// * [sorted] 
abstract class Sort implements Built<Sort, SortBuilder> {
    @BuiltValueField(wireName: r'empty')
    bool? get empty;

    @BuiltValueField(wireName: r'unsorted')
    bool? get unsorted;

    @BuiltValueField(wireName: r'sorted')
    bool? get sorted;

    Sort._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SortBuilder b) => b;

    factory Sort([void updates(SortBuilder b)]) = _$Sort;

    @BuiltValueSerializer(custom: true)
    static Serializer<Sort> get serializer => _$SortSerializer();
}

class _$SortSerializer implements StructuredSerializer<Sort> {
    @override
    final Iterable<Type> types = const [Sort, _$Sort];

    @override
    final String wireName = r'Sort';

    @override
    Iterable<Object?> serialize(Serializers serializers, Sort object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.empty != null) {
            result
                ..add(r'empty')
                ..add(serializers.serialize(object.empty,
                    specifiedType: const FullType(bool)));
        }
        if (object.unsorted != null) {
            result
                ..add(r'unsorted')
                ..add(serializers.serialize(object.unsorted,
                    specifiedType: const FullType(bool)));
        }
        if (object.sorted != null) {
            result
                ..add(r'sorted')
                ..add(serializers.serialize(object.sorted,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    Sort deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SortBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'empty':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.empty = valueDes;
                    break;
                case r'unsorted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.unsorted = valueDes;
                    break;
                case r'sorted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.sorted = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

