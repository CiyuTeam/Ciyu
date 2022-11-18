//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:ciyu_api/src/model/suggestion_entry_option.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'suggest.g.dart';

/// Suggest
///
/// Properties:
/// * [suggestions] 
abstract class Suggest implements Built<Suggest, SuggestBuilder> {
    @BuiltValueField(wireName: r'suggestions')
    BuiltList<SuggestionEntryOption>? get suggestions;

    Suggest._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SuggestBuilder b) => b;

    factory Suggest([void updates(SuggestBuilder b)]) = _$Suggest;

    @BuiltValueSerializer(custom: true)
    static Serializer<Suggest> get serializer => _$SuggestSerializer();
}

class _$SuggestSerializer implements StructuredSerializer<Suggest> {
    @override
    final Iterable<Type> types = const [Suggest, _$Suggest];

    @override
    final String wireName = r'Suggest';

    @override
    Iterable<Object?> serialize(Serializers serializers, Suggest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.suggestions != null) {
            result
                ..add(r'suggestions')
                ..add(serializers.serialize(object.suggestions,
                    specifiedType: const FullType(BuiltList, [FullType(SuggestionEntryOption)])));
        }
        return result;
    }

    @override
    Suggest deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SuggestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'suggestions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(SuggestionEntryOption)])) as BuiltList<SuggestionEntryOption>;
                    result.suggestions.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

