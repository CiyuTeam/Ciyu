//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pageable.g.dart';

/// Pageable
///
/// Properties:
/// * [page] 
/// * [size] 
/// * [sort] 
abstract class Pageable implements Built<Pageable, PageableBuilder> {
    @BuiltValueField(wireName: r'page')
    int? get page;

    @BuiltValueField(wireName: r'size')
    int? get size;

    @BuiltValueField(wireName: r'sort')
    BuiltList<String>? get sort;

    Pageable._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PageableBuilder b) => b;

    factory Pageable([void updates(PageableBuilder b)]) = _$Pageable;

    @BuiltValueSerializer(custom: true)
    static Serializer<Pageable> get serializer => _$PageableSerializer();
}

class _$PageableSerializer implements StructuredSerializer<Pageable> {
    @override
    final Iterable<Type> types = const [Pageable, _$Pageable];

    @override
    final String wireName = r'Pageable';

    @override
    Iterable<Object?> serialize(Serializers serializers, Pageable object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.page != null) {
            result
                ..add(r'page')
                ..add(serializers.serialize(object.page,
                    specifiedType: const FullType(int)));
        }
        if (object.size != null) {
            result
                ..add(r'size')
                ..add(serializers.serialize(object.size,
                    specifiedType: const FullType(int)));
        }
        if (object.sort != null) {
            result
                ..add(r'sort')
                ..add(serializers.serialize(object.sort,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        return result;
    }

    @override
    Pageable deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PageableBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'page':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.page = valueDes;
                    break;
                case r'size':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.size = valueDes;
                    break;
                case r'sort':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.sort.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

