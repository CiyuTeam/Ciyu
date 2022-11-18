import 'dart:ffi';
import 'dart:io';

import 'package:ciyu/pages/article_page.dart';
import 'package:ciyu/providers/bond_provider.dart';
import 'package:ciyu/providers/dio_provider.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final wordProvider =
    FutureProvider.autoDispose.family<WordDto, String>((ref, wordId) async {
  CiyuApi api = ref.watch(apiProvider);
  Response<WordDto> response = await api.getWordControllerApi().getWordById(
    id: wordId,
  );
  ref.read(hasBondProvider(wordId).notifier).setData(response.data!.hasBond!);
  return response.data!;
});

final newlyBondedWordIdsProvider = StateNotifierProvider<NewlyBondedWordIdsNotifier, Map<String, bool>>((ref) => NewlyBondedWordIdsNotifier(ref));

class NewlyBondedWordIdsNotifier extends StateNotifier<Map<String, bool>> {
  Ref ref;
  NewlyBondedWordIdsNotifier(this.ref) : super({});
  void add(String wordId) {
    state[wordId] = true;
    state = Map.from(state);
  }

  void remove(String wordId) {
    state[wordId] = false;
    state = Map.from(state);
  }
}
