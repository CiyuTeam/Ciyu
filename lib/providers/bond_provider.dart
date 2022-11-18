import 'dart:ffi';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:ciyu/providers/dio_provider.dart';
import 'package:ciyu/providers/word_provider.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final hasHighlightProvider =
    StateProvider.family<bool, String>((ref, wordId) => false);

final newlyBondedStatusProvider = Provider.family<bool?, String>((ref, wordId) {
  final newlyBondedWordIds = ref.watch(newlyBondedWordIdsProvider);
  return newlyBondedWordIds[wordId];
});

final hasBondProvider =
    StateNotifierProvider.family<HasBondNotifier, bool?, String>(
        (ref, wordId) => HasBondNotifier(ref, wordId));

class HasBondNotifier extends StateNotifier<bool?> {
  Ref ref;
  String wordId;

  HasBondNotifier(this.ref, this.wordId) : super(null) {
    ref.onDispose(() {
      print("Dispose!!!!");
    });
  }

  Future<void> createBond({
    required String articleId,
    required String meaningId,
    required double quality,
  }) async {
    final api = ref.watch(apiProvider);

    Response response = await api.getBondControllerApi().createBond(
          createBondDto: CreateBondDto((createBondBuilder) => createBondBuilder
            ..articleId = articleId
            ..meaningId = meaningId
            ..quality = quality),
        );
    if (response.statusCode == HttpStatus.ok) {
      state = true;
      ref.read(newlyBondedWordIdsProvider.notifier).add(wordId);
    }
  }

  Future<void> removeBond({
    required String wordId,
  }) async {
    final api = ref.watch(apiProvider);

    Response response = await api.getBondControllerApi().removeBond(
          wordId: wordId,
        );
    if (response.statusCode == HttpStatus.ok) {
      state = false;
      ref.read(newlyBondedWordIdsProvider.notifier).remove(wordId);
    }
  }

  void setData(bool data) {
    state = data;
  }
}

final isBondedProvider = Provider.family<bool, String>((ref, wordId) {
  bool? hasBond = ref.watch(hasBondProvider(wordId));
  bool? newlyBondedStatus = ref.watch(newlyBondedStatusProvider(wordId));
  bool hasHighlight = ref.watch(hasHighlightProvider(wordId));
  print(
      "$wordId hasBond:$hasBond newlyBondedStatus:$newlyBondedStatus hasHighlight:$hasHighlight");
  return hasBond ?? newlyBondedStatus ?? hasHighlight;
});

final bondsProvider = FutureProvider.autoDispose((ref) async {
  final api = ref.watch(apiProvider);
  Response<BuiltList<GetBondsDto>> response = await api.getBondControllerApi().getBonds();
  BuiltList<GetBondsDto> bonds = response.data!;
  return bonds.toList();
});

// class HasBondNotifier extends StateNotifier<AsyncValue<bool>> {
//   Ref ref;
//   String wordId;
//
//   HasBondNotifier(this.ref, this.wordId) : super(AsyncValue.loading());
//
//   Future<void> createBond({
//     required String articleId,
//     required String meaningId,
//     required double quality,
//   }) async {
//     final api = ref.watch(apiProviderProvider);
//
//     Response response = await api.getBondControllerApi().createBond(
//       createBondDto: CreateBondDto((createBondBuilder) => createBondBuilder
//         ..articleId = articleId
//         ..meaningId = meaningId
//         ..quality = quality),
//     );
//     if (response.statusCode == HttpStatus.ok) {
//       state = AsyncValue.data(true);
//       ref.read(newlyBondedWordIdsProvider.notifier).add(wordId);
//     }
//   }
//
//   Future<void> removeBond({
//     required String wordId,
//   }) async {
//     final api = ref.watch(apiProviderProvider);
//
//     Response response = await api.getBondControllerApi().removeBond(
//       wordId: wordId,
//     );
//     if (response.statusCode == HttpStatus.ok) {
//       state = AsyncValue.data(false);
//       ref.read(newlyBondedWordIdsProvider.notifier).remove(wordId);
//     }
//   }
//
//   void suggest(bool data) {
//     final newlyBondedWordIds = ref.watch(newlyBondedWordIdsProvider);
//     state = AsyncValue.data(newlyBondedWordIds[wordId] ?? data);
//   }
// }
