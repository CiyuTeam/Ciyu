import 'dart:ffi';
import 'dart:io';

import 'package:ciyu/providers/dio_provider.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final meetStatusProvider = StateNotifierProvider.autoDispose<MeetNotifier, MeetStatus>(
        (ref) => MeetNotifier(ref));

enum MeetStatus { initial, loading, success, failure }

class MeetNotifier extends StateNotifier<MeetStatus> {
  Ref ref;

  MeetNotifier(this.ref) : super(MeetStatus.initial);

  Future<void> createMeet({
    required String articleId,
    required String meaningId,
    required double quality,
  }) async {
    final api = ref.watch(apiProvider);
    state = MeetStatus.loading;
    try {
      Response response = await api.getMeetControllerApi().createMeet(
        createMeetDto: CreateMeetDto((createMeetBuilder) => createMeetBuilder
          ..articleId = articleId
          ..meaningId = meaningId
          ..quality = quality),
        extra: <String, List<Map<String, String>>>{
          "secure": [
            <String, String>{
              "type": "http",
              "scheme": "bearer",
              "name": "jwt",
            },
          ]
        },
      );
      if (response.statusCode == HttpStatus.ok) {
        state = MeetStatus.success;
      } else {
        state = MeetStatus.failure;
      }
    } catch (exception) {
      state = MeetStatus.failure;
    }
  }
}
