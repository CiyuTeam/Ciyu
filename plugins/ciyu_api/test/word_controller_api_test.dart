import 'package:test/test.dart';
import 'package:ciyu_api/ciyu_api.dart';


/// tests for WordControllerApi
void main() {
  final instance = CiyuApi().getWordControllerApi();

  group(WordControllerApi, () {
    //Future<Word> getWordById(User user, String id) async
    test('test getWordById', () async {
      // TODO
    });

  });
}
