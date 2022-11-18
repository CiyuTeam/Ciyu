//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:ciyu_api/src/model/entry_option.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suggestion_entry_option.g.dart';

/// SuggestionEntryOption
///
/// Properties:
/// * [name] 
/// * [size] 
/// * [entries] 
abstract class SuggestionEntryOption implements Built<SuggestionEntryOption, SuggestionEntryOptionBuilder> {
    @BuiltValueField(wireName: r'name')
    String? get name;

    @BuiltValueField(wireName: r'size')
    int? get size;

    @BuiltValueField(wireName: r'entries')
    BuiltList<EntryOption>? get entries;

    SuggestionEntryOption._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SuggestionEntryOptionBuilder b) => b;

    factory SuggestionEntryOption([void updates(SuggestionEntryOptionBuilder b)]) = _$SuggestionEntryOption;

    @BuiltValueSerializer(custom: true)
    static Serializer<SuggestionEntryOption> get serializer => _$SuggestionEntryOptionSerializer();
}

class _$SuggestionEntryOptionSerializer implements StructuredSerializer<SuggestionEntryOption> {
    @override
    final Iterable<Type> types = const [SuggestionEntryOption, _$SuggestionEntryOption];

    @override
    final String wireName = r'SuggestionEntryOption';

    @override
    Iterable<Object?> serialize(Serializers serializers, SuggestionEntryOption object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.size != null) {
            result
                ..add(r'size')
                ..add(serializers.serialize(object.size,
                    specifiedType: const FullType(int)));
        }
        if (object.entries != null) {
            result
                ..add(r'entries')
                ..add(serializers.serialize(object.entries,
                    specifiedType: const FullType(BuiltList, [FullType(EntryOption)])));
        }
        return result;
    }

    @override
    SuggestionEntryOption deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SuggestionEntryOptionBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'size':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.size = valueDes;
                    break;
                case r'entries':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(EntryOption)])) as BuiltList<EntryOption>;
                    result.entries.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

