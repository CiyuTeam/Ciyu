import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:ciyu/providers/dio_provider.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jverify/jverify.dart';

import '../styles/custom_colors.dart';

final articlesProvider =
    StateNotifierProvider.autoDispose<ArticlesNotifier, List<SearchHitArticle>>(
        (ref) => ArticlesNotifier(ref));

class ArticlesNotifier extends StateNotifier<List<SearchHitArticle>> {
  final _size = 10;
  final Ref ref;
  bool _loading = false;

  ArticlesNotifier(this.ref) : super([]) {
    fetch();
  }

  Future<void> fetch() async {
    if (_loading) return;
    _loading = true;
    final api = ref.watch(apiProvider);
    List<String> excludedArticleIds =
        state.map((searchHit) => searchHit.content!.id!).toList();
    Response<SearchHitsArticle> response =
        await api.getArticleControllerApi().getBestArticles(
              size: _size,
              page: 0,
              excludedArticleIds: excludedArticleIds.length > 0
                  ? BuiltList.of(excludedArticleIds)
                  : BuiltList.of([""]),
            );
    if (response.statusCode == HttpStatus.ok &&
        response.data != null &&
        response.data!.searchHits != null) {
      state = [...state, ...response.data!.searchHits!.toList()];
    }
    _loading = false;
  }

  Future<void> reset() {
    state = [];
    return fetch();
  }
}

final articleColorChoiceProvider = StateProvider((ref) =>
    ColorChoice(foregroundColor: Colors.black, backgroundColor: Colors.white));

final articleColorCandidatesProvider = Provider((ref) => [
      ColorChoice(
          foregroundColor: CustomColors.black,
          backgroundColor: CustomColors.white),
      ColorChoice(
          foregroundColor: CustomColors.black,
          backgroundColor: CustomColors.card),
      ColorChoice(
          foregroundColor: CustomColors.black,
          backgroundColor: CustomColors.lightGrey),
      ColorChoice(
          foregroundColor: CustomColors.white,
          backgroundColor: CustomColors.black),
    ]);

class ColorChoice extends Equatable {
  final Color foregroundColor;
  final Color backgroundColor;

  ColorChoice({required this.foregroundColor, required this.backgroundColor});

  @override
  List<Object?> get props => [foregroundColor.value, backgroundColor.value];
}

final searchArticlesProvider =
    StateNotifierProvider<SearchArticlesNotifier, List<SearchHitArticle>>(
        (ref) => SearchArticlesNotifier(ref));

class SearchArticlesNotifier extends StateNotifier<List<SearchHitArticle>> {
  final _size = 10;
  int _page = 0;
  final Ref ref;
  bool _loading = false;
  String? _wordId = null;
  set wordId(String? value) {
    _wordId = value;
    _page = 0;
    state = [];
    _fetch();
  }

  String? get wordId => _wordId;

  SearchArticlesNotifier(this.ref) : super([]) {}

  Future<void> _fetch() async {
    if (_loading) return;
    _loading = true;
    final api = ref.watch(apiProvider);
    Response<SearchHitsArticle> response =
        await api.getArticleControllerApi().searchByWordId(
              size: _size,
              page: _page,
              wordId: _wordId!,
            );
    if (response.statusCode == HttpStatus.ok &&
        response.data != null &&
        response.data!.searchHits != null) {
      state = [...state, ...response.data!.searchHits!.toList()];
    }
    _page++;
    _loading = false;
  }
}
