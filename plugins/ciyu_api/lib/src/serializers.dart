//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:ciyu_api/src/date_serializer.dart';
import 'package:ciyu_api/src/model/date.dart';

import 'package:ciyu_api/src/model/article.dart';
import 'package:ciyu_api/src/model/create_bond_dto.dart';
import 'package:ciyu_api/src/model/create_meet_dto.dart';
import 'package:ciyu_api/src/model/create_meets_dto.dart';
import 'package:ciyu_api/src/model/entry_option.dart';
import 'package:ciyu_api/src/model/explanation.dart';
import 'package:ciyu_api/src/model/get_bonds_dto.dart';
import 'package:ciyu_api/src/model/meaning.dart';
import 'package:ciyu_api/src/model/nested_meta_data.dart';
import 'package:ciyu_api/src/model/option.dart';
import 'package:ciyu_api/src/model/phonetic.dart';
import 'package:ciyu_api/src/model/refresh_token_data.dart';
import 'package:ciyu_api/src/model/register_dto.dart';
import 'package:ciyu_api/src/model/search_hit_article.dart';
import 'package:ciyu_api/src/model/search_hit_object.dart';
import 'package:ciyu_api/src/model/search_hits_article.dart';
import 'package:ciyu_api/src/model/search_hits_object.dart';
import 'package:ciyu_api/src/model/suggest.dart';
import 'package:ciyu_api/src/model/suggestion_entry_option.dart';
import 'package:ciyu_api/src/model/token_dto.dart';
import 'package:ciyu_api/src/model/word.dart';
import 'package:ciyu_api/src/model/word_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  Article,
  CreateBondDto,
  CreateMeetDto,
  CreateMeetsDto,
  EntryOption,
  Explanation,
  GetBondsDto,
  Meaning,
  NestedMetaData,
  Option,
  Phonetic,
  RefreshTokenData,
  RegisterDto,
  SearchHitArticle,
  SearchHitObject,
  SearchHitsArticle,
  SearchHitsObject,
  Suggest,
  SuggestionEntryOption,
  TokenDto,
  Word,
  WordDto,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(GetBondsDto)]),
        () => ListBuilder<GetBondsDto>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
