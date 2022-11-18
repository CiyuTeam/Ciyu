import 'package:ciyu/pages/article_page.dart';
import 'package:ciyu/pages/bond_page.dart';
import 'package:ciyu/pages/search_page.dart';
import 'package:ciyu/providers/article_provider.dart';
import 'package:ciyu/styles/theme.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecommendPage extends HookConsumerWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScrollController scrollController = useScrollController();
    List<SearchHitArticle> articles = ref.watch(articlesProvider);
    ArticlesNotifier articlesNotifier = ref.watch(articlesProvider.notifier);
    scrollController.addListener(() {
      if (scrollController.offset ==
          scrollController.position.maxScrollExtent) {
        articlesNotifier.fetch();
      }
    });

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("svgs/menu.svg"),
          onPressed: () {
            Navigator.of(context).push(BondPage.route());
          },
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
          child: Hero(
            tag: "search",
            child: TextField(
              readOnly: true,
              onTap: () => Navigator.of(context).push(SearchPage.route()),
              decoration: InputDecoration(contentPadding: EdgeInsets.all(12)),
            ),
          ),
        ),
        titleSpacing: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(articlesProvider.notifier).reset(),
        child: ListView.separated(
          // padding: EdgeInsets.symmetric(vertical: 8),
          physics: BouncingScrollPhysics(),
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
                    SizedBox(height: 4),
                    if (articles[index].highlightFields!.containsKey("content"))
                      Text(
                        RegExp("<em>([a-zA-Z-']+)</em>")
                            .allMatches(
                            (articles[index].highlightFields!["title"] == null ? " " :articles[index].highlightFields!["title"]![0])
                                    + (articles[index].highlightFields!["content"] == null ? " " : articles[index].highlightFields!["content"]![0]))
                            .map((match) => match.group(1)!)
                            .toSet()
                            .reduce((value, element) => value + ", " + element),
                        style: textTheme.titleSmall!.copyWith(
                            color: Colors.grey, fontFamily: "San Francisco"),
                        overflow: TextOverflow.ellipsis,
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
          itemCount: articles.length + 1,
          controller: scrollController,
        ),
      ),
    );
  }

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const RecommendPage());
  }
}
