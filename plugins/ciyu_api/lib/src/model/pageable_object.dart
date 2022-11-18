//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/sort.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pageable_object.g.dart';

/// PageableObject
///
/// Properties:
/// * [offset] 
/// * [sort] 
/// * [pageSize] 
/// * [pageNumber] 
/// * [paged] 
/// * [unpaged] 
abstract class PageableObject implements Built<PageableObject, PageableObjectBuilder> {
    @BuiltValueField(wireName: r'offset')
    int? get offset;

    @BuiltValueField(wireName: r'sort')
    Sort? get sort;

    @BuiltValueField(wireName: r'pageSize')
    int? get pageSize;

    @BuiltValueField(wireName: r'pageNumber')
    int? get pageNumber;

    @BuiltValueField(wireName: r'paged')
    bool? get paged;

    @BuiltValueField(wireName: r'unpaged')
    bool? get unpaged;

    PageableObject._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PageableObjectBuilder b) => b;

    factory PageableObject([void updates(PageableObjectBuilder b)]) = _$PageableObject;

    @BuiltValueSerializer(custom: true)
    static Serializer<PageableObject> get serializer => _$PageableObjectSerializer();
}

class _$PageableObjectSerializer implements StructuredSerializer<PageableObject> {
    @override
    final Iterable<Type> types = const [PageableObject, _$PageableObject];

    @override
    final String wireName = r'PageableObject';

    @override
    Iterable<Object?> serialize(Serializers serializers, PageableObject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.offset != null) {
            result
                ..add(r'offset')
                ..add(serializers.serialize(object.offset,
                    specifiedType: const FullType(int)));
        }
        if (object.sort != null) {
            result
                ..add(r'sort')
                ..add(serializers.serialize(object.sort,
                    specifiedType: const FullType(Sort)));
        }
        if (object.pageSize != null) {
            result
                ..add(r'pageSize')
                ..add(serializers.serialize(object.pageSize,
                    specifiedType: const FullType(int)));
        }
        if (object.pageNumber != null) {
            result
                ..add(r'pageNumber')
                ..add(serializers.serialize(object.pageNumber,
                    specifiedType: const FullType(int)));
        }
        if (object.paged != null) {
            result
                ..add(r'paged')
                ..add(serializers.serialize(object.paged,
                    specifiedType: const FullType(bool)));
        }
        if (object.unpaged != null) {
            result
                ..add(r'unpaged')
                ..add(serializers.serialize(object.unpaged,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    PageableObject deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PageableObjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'offset':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.offset = valueDes;
                    break;
                case r'sort':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Sort)) as Sort;
                    result.sort.replace(valueDes);
                    break;
                case r'pageSize':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.pageSize = valueDes;
                    break;
                case r'pageNumber':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.pageNumber = valueDes;
                    break;
                case r'paged':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.paged = valueDes;
                    break;
                case r'unpaged':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.unpaged = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

