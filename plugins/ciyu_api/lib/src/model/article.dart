//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article.g.dart';

/// Article
///
/// Properties:
/// * [id] 
/// * [content] 
/// * [title] 
/// * [thumbnail] 
abstract class Article implements Built<Article, ArticleBuilder> {
    @BuiltValueField(wireName: r'id')
    String? get id;

    @BuiltValueField(wireName: r'content')
    String? get content;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'thumbnail')
    String? get thumbnail;

    Article._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ArticleBuilder b) => b;

    factory Article([void updates(ArticleBuilder b)]) = _$Article;

    @BuiltValueSerializer(custom: true)
    static Serializer<Article> get serializer => _$ArticleSerializer();
}

class _$ArticleSerializer implements StructuredSerializer<Article> {
    @override
    final Iterable<Type> types = const [Article, _$Article];

    @override
    final String wireName = r'Article';

    @override
    Iterable<Object?> serialize(Serializers serializers, Article object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(String)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.thumbnail != null) {
            result
                ..add(r'thumbnail')
                ..add(serializers.serialize(object.thumbnail,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Article deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ArticleBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'content':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.content = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'thumbnail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.thumbnail = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

