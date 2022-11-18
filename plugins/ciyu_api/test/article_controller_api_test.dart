import 'package:test/test.dart';
import 'package:ciyu_api/ciyu_api.dart';


/// tests for ArticleControllerApi
void main() {
  final instance = CiyuApi().getArticleControllerApi();

  group(ArticleControllerApi, () {
    //Future<PageArticle> getArticlePage(Pageable pageable) async
    test('test getArticlePage', () async {
      // TODO
    });

  });
}
