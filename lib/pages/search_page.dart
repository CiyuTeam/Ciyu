import 'package:ciyu_api/ciyu_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/article_provider.dart';
import '../styles/theme.dart';
import 'article_page.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  static Route route() {
    return CustomPageRoute<void>(builder: (_) => SearchPage());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScrollController scrollController = useScrollController();
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
          child: TextField(
            autofocus: true,
            onSubmitted: (wordId) => ref.read(searchArticlesProvider.notifier).wordId = wordId,
            decoration: InputDecoration(contentPadding: EdgeInsets.all(12)),
          ),
        ),
        titleSpacing: 0,
      ),
      body: Consumer(
        builder: (context, ref, child) {
          List<SearchHitArticle> articles = ref.watch(searchArticlesProvider);
          return ListView.separated(
            // padding: EdgeInsets.symmetric(vertical: 8),
            itemBuilder: (context, index) {
              if (index < articles.length) {
                return ListTile(
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        articles[index].content!.title!,
                        style: textTheme.titleLarge,
                      ),
                      SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          articles[index].content!.thumbnail!,
                          fit: BoxFit.fitWidth,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(ArticlePage.route(articles[index]));
                  },
                );
              } else {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 32),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: ref.watch(searchArticlesProvider.notifier).wordId != null ? articles.length + 1 : 0,
            controller: scrollController,
          );
        }
      ),
    );
  }
}

class CustomPageRoute<T> extends MaterialPageRoute<T> {
  CustomPageRoute({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}
