//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ciyu_api/src/model/option.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entry_option.g.dart';

/// EntryOption
///
/// Properties:
/// * [text] 
/// * [offset] 
/// * [length] 
/// * [options] 
abstract class EntryOption implements Built<EntryOption, EntryOptionBuilder> {
    @BuiltValueField(wireName: r'text')
    String? get text;

    @BuiltValueField(wireName: r'offset')
    int? get offset;

    @BuiltValueField(wireName: r'length')
    int? get length;

    @BuiltValueField(wireName: r'options')
    BuiltList<Option>? get options;

    EntryOption._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(EntryOptionBuilder b) => b;

    factory EntryOption([void updates(EntryOptionBuilder b)]) = _$EntryOption;

    @BuiltValueSerializer(custom: true)
    static Serializer<EntryOption> get serializer => _$EntryOptionSerializer();
}

class _$EntryOptionSerializer implements StructuredSerializer<EntryOption> {
    @override
    final Iterable<Type> types = const [EntryOption, _$EntryOption];

    @override
    final String wireName = r'EntryOption';

    @override
    Iterable<Object?> serialize(Serializers serializers, EntryOption object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.text != null) {
            result
                ..add(r'text')
                ..add(serializers.serialize(object.text,
                    specifiedType: const FullType(String)));
        }
        if (object.offset != null) {
            result
                ..add(r'offset')
                ..add(serializers.serialize(object.offset,
                    specifiedType: const FullType(int)));
        }
        if (object.length != null) {
            result
                ..add(r'length')
                ..add(serializers.serialize(object.length,
                    specifiedType: const FullType(int)));
        }
        if (object.options != null) {
            result
                ..add(r'options')
                ..add(serializers.serialize(object.options,
                    specifiedType: const FullType(BuiltList, [FullType(Option)])));
        }
        return result;
    }

    @override
    EntryOption deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EntryOptionBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'text':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.text = valueDes;
                    break;
                case r'offset':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.offset = valueDes;
                    break;
                case r'length':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.length = valueDes;
                    break;
                case r'options':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Option)])) as BuiltList<Option>;
                    result.options.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

