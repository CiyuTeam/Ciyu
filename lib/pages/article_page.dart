import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:built_collection/src/list.dart';
import 'package:ciyu/models/article_word.dart';
import 'package:ciyu/providers/article_provider.dart';
import 'package:ciyu/providers/bond_provider.dart';
import 'package:ciyu/providers/meet_provider.dart';
import 'package:ciyu/providers/word_provider.dart';
import 'package:ciyu/styles/theme.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:ciyu_api/src/model/article.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../styles/custom_colors.dart';

class ArticlePage extends StatefulHookConsumerWidget {
  final SearchHitArticle article;

  @override
  const ArticlePage(this.article, {Key? key}) : super(key: key);

  static Route route(SearchHitArticle article) {
    return MaterialPageRoute<void>(builder: (_) => ArticlePage(article));
  }

  _ArticlePageState createState() => _ArticlePageState();
}

double kExpandedHeight = 200;

class _ArticlePageState extends ConsumerState<ArticlePage> {
  double _fontSize = 20;
  double _textHeight = 1.5;

  @override
  Widget build(BuildContext context) {
    ColorChoice colorChoice = ref.watch(articleColorChoiceProvider);
    ref.watch(newlyBondedWordIdsProvider);
    return Scaffold(
      backgroundColor: colorChoice.backgroundColor,
      body: _buildBody(),
    );
  }

  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      builder: _buildSetting,
    );
  }

  void _showWordSheet(String _word) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
        builder: (context) {
          return _buildWordSheet(_word);
        });
  }

  Widget _buildBody() {
    return CustomScrollView(
        controller: useScrollController(),
        physics: const BouncingScrollPhysics(), //反弹效果
        slivers: <Widget>[
          SliverAppBar(
            // title: Text("hello"),
            actions: <Widget>[
              IconButton(onPressed: null, icon: Icon(Icons.favorite)),
              IconButton(
                  icon: Icon(Icons.settings), onPressed: _showModalBottomSheet),
            ],
            floating: true,
          ),
          SliverPadding(
            padding: EdgeInsets.all(24),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildTitle(widget.article.highlightFields!.containsKey("title")
                    ? widget.article.highlightFields!["title"]![0]
                    : widget.article.content!.title!),
                SizedBox(height: 20),
                _buildContent(
                    widget.article.highlightFields!.containsKey("content")
                        ? widget.article.highlightFields!["content"]![0]
                        : widget.article.content!.content!),
              ]),
            ),
          ),
        ]);
  }

  Widget _buildTitle(String text) {
    ColorChoice colorChoice = ref.watch(articleColorChoiceProvider);
    return EasyRichText(
      text,
      defaultStyle: textTheme.displaySmall,
      selectable: true,
      patternList: [
        EasyRichTextPattern(
          targetString: r"(<em>)?([a-zA-Z-']+)(</em>)?",
          matchBuilder: (BuildContext context, RegExpMatch? match) {
            String wordId = match![2]!;
            bool hasHighlight = match[1] != null;
            ref.watch(hasHighlightProvider(wordId).notifier).state =
                hasHighlight;
            bool? newlyBondedStatus =
                ref.watch(newlyBondedStatusProvider(wordId));
            return TextSpan(
              text: wordId,
              style: TextStyle(
                  color: newlyBondedStatus ?? hasHighlight
                      ? Colors.blue
                      : colorChoice.foregroundColor),
              recognizer: MultiTapGestureRecognizer(
                  longTapDelay: Duration(milliseconds: 500))
                // ..onLongTapDown = (pointer, detail) {
                //   // 长按效果
                //   // Vibrate.vibrate();
                //   // 震动
                //   // setState(() {
                //   //   _fontColor.replaceRange(i, i + 1, [CustomColors.vi]); //变色
                //   // });
                // }
                ..onTapUp = (pointer, detail) {
                  _showWordSheet(wordId);
                },
            );
          },
        ),
      ],
    );
    // return Text(text, style: textTheme.displaySmall);
  }

  Widget _buildContent(String content) {
    ColorChoice colorChoice = ref.watch(articleColorChoiceProvider);
    return EasyRichText(
      content,
      defaultStyle: textTheme.bodyLarge!.copyWith(
          fontFamily: 'Times New Roman', color: colorChoice.foregroundColor),
      selectable: true,
      patternList: [
        EasyRichTextPattern(
          targetString: r"(<em>)?([a-zA-Z-']+)(</em>)?",
          matchBuilder: (BuildContext context, RegExpMatch? match) {
            String wordId = match![2]!;
            bool hasHighlight = match[1] != null;
            ref.watch(hasHighlightProvider(wordId).notifier).state =
                hasHighlight;
            bool? newlyBondedStatus =
                ref.watch(newlyBondedStatusProvider(wordId));
            return TextSpan(
              text: wordId,
              style: TextStyle(
                  color: newlyBondedStatus ?? hasHighlight
                      ? Colors.blue
                      : colorChoice.foregroundColor),
              recognizer: MultiTapGestureRecognizer(
                  longTapDelay: Duration(milliseconds: 500))
                // ..onLongTapDown = (pointer, detail) {
                //   // 长按效果
                //   // Vibrate.vibrate();
                //   // 震动
                //   // setState(() {
                //   //   _fontColor.replaceRange(i, i + 1, [CustomColors.vi]); //变色
                //   // });
                // }
                ..onTapUp = (pointer, detail) {
                  _showWordSheet(wordId);
                },
            );
          },
        ),
      ],
    );
  }

  List<ArticleWord> extractWords(String content) {
    return RegExp("[a-zA-Z-']+")
        .allMatches(content)
        .map((element) => ArticleWord(
              text: element.group(0)!,
              color: Colors.black,
              start: element.start,
              end: element.end,
            ))
        .toList();
  }

  Widget _buildMeanings(List<Meaning> meanings) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: meanings
          .map((meaning) => Text(
                meaning.definition!,
                style: textTheme.bodyMedium,
              ))
          .toList(),
    );
  }

  Widget _buildWordSheet(String wordId) {
    List<String> descriptions = <String>["忘记", "猜错", "猜对", "记得", "掌握"];
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Opacity(
                        opacity: 0.82,
                        child: Text(
                          wordId,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            // fontFamily: "SF Pro Display",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Consumer(
                        builder: (context, ref, child) {
                          final isBonded = ref.watch(isBondedProvider(wordId));
                          AsyncValue<WordDto> word =
                              ref.watch(wordProvider(wordId));
                          final hasBondNotifier =
                              ref.read(hasBondProvider(wordId).notifier);
                          return IconButton(
                            onPressed: () {
                              if (isBonded)
                                hasBondNotifier.removeBond(wordId: wordId);
                              else
                                hasBondNotifier.createBond(
                                  articleId: widget.article.id!,
                                  meaningId: word.value!.meanings![0].id!,
                                  quality: 1,
                                );
                              // hasBond.whenData((data) {
                              //   if (word.value == null) return;
                              //   if (data) {
                              //     ref
                              //         .read(hasBondProvider(wordId).notifier)
                              //         .removeBond(wordId: wordId);
                              //   } else {
                              //     ref
                              //         .read(hasBondProvider(wordId).notifier)
                              //         .createBond(
                              //           articleId: widget.article.id!,
                              //           meaningId: word.value!.meanings![0].id!,
                              //           quality: 1,
                              //         );
                              //   }
                              // });
                            },
                            icon: isBonded
                                ? Icon(Icons.bookmark)
                                : Icon(Icons.bookmark_add_outlined),
                            // icon: hasBond.when(
                            //   data: (data) =>
                            //   data
                            //       ? Icon(Icons.bookmark)
                            //       : Icon(Icons.bookmark_add_outlined),
                            //   error: (error, stackTrace) =>
                            //       Icon(Icons.network_check),
                            //   loading: () =>
                            //       SizedBox.square(
                            //         dimension: 16.0,
                            //         child:
                            //         CircularProgressIndicator(strokeWidth: 2),
                            //       ),
                            // ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Consumer(builder: (context, ref, child) {
                  AsyncValue<WordDto> word = ref.watch(wordProvider(wordId));
                  return word.when(
                      data: (data) => Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0x1e767680),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: ListView.separated(
                                itemCount: data.phonetics!.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) => Opacity(
                                      opacity: 0.30,
                                      child: Container(
                                        width: 20,
                                        child: VerticalDivider(
                                          color: Color(0xff8e8e93),
                                          // width: 1,
                                          thickness: 1,
                                        ),
                                      ),
                                    ),
                                itemBuilder: (context, index) {
                                  Phonetic phonetic = data.phonetics![index];
                                  return GestureDetector(
                                    onTap: () => AudioPlayer()
                                        .play(UrlSource(phonetic.audio!)),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          phonetic.locale!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: "SF Pro Text",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          phonetic.symbol!,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: "SF Pro Text",
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                      error: (error, stackTrace) => Container(),
                      loading: () => Container());
                }),
              ],
            ),
          ),
          SizedBox(height: 12),
          Consumer(builder: (context, ref, child) {
            AsyncValue<WordDto> word = ref.watch(wordProvider(wordId));
            return word.when(
              data: (data) => _buildMeanings(data.meanings!.toList()),
              error: (error, stackTrace) => Text("查询失败"),
              loading: () => Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox.square(
                    dimension: 16,
                    child: CircularProgressIndicator(strokeWidth: 2)),
              ),
            );
          }),
          Consumer(builder: (context, ref, child) {
            bool? hasBond = ref.watch(hasBondProvider(wordId));
            MeetStatus meetStatus = ref.watch(meetStatusProvider);
            AsyncValue<WordDto> word = ref.watch(wordProvider(wordId));
            ref.listen(meetStatusProvider, (previous, next) {
              if (next == MeetStatus.success) Navigator.pop(context);
            });
            if (hasBond != null && hasBond)
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 12),
                  Row(
                    children: List.generate(
                      5,
                      (index) {
                        int score = index + 1;
                        double quality = score / 5.0;
                        return Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (word.value == null) return;
                              ref.read(meetStatusProvider.notifier).createMeet(
                                    articleId: widget.article.id!,
                                    meaningId: word.value!.meanings!.first.id!,
                                    quality: quality,
                                  );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0x1e767680),
                              ),
                              padding: const EdgeInsets.all(6),
                              margin: EdgeInsets.fromLTRB(
                                  index > 0 ? 4 : 0, 0, 0, 0),
                              child:
                                  Center(child: Text("${descriptions[index]}")),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            else
              return Container();
          }),
        ],
      ),
    );
  }

  Widget _buildSetting(BuildContext context) {
    List<ColorChoice> colorCandidates =
        ref.watch(articleColorCandidatesProvider);
    var circles = colorCandidates
        .map((colorCandidate) => GestureDetector(
              onTap: () {
                ref.read(articleColorChoiceProvider.notifier).state =
                    colorCandidate;
              },
              child: Consumer(builder: (context, ref, child) {
                ColorChoice colorChoice = ref.watch(articleColorChoiceProvider);
                return Container(
                  width: 60,
                  height: 60,
                  decoration: colorCandidate == colorChoice
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: CustomColors.vi),
                        )
                      : null,
                  child: Center(
                    child: CircleAvatar(
                      radius: 26,
                      backgroundColor: colorCandidate.backgroundColor,
                    ),
                  ),
                );
              }),
            ))
        .toList();

    return Padding(
      padding: EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: circles,
            ),
            SizedBox(height: 16.0),
            Divider(color: CustomColors.lightGrey),
            SizedBox(height: 16.0),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    child: SvgPicture.asset('svgs/text_size_small.svg',
                        color: CustomColors.grey),
                    onTap: () {
                      print("small");
                      setState(() {
                        _fontSize = 16.0;
                      });
                    },
                  ),
                  GestureDetector(
                    child: SvgPicture.asset('svgs/text_size_medium.svg',
                        color: CustomColors.black),
                    onTap: () {
                      print("medium");
                      setState(() {
                        _fontSize = 20.0;
                      });
                    },
                  ),
                  GestureDetector(
                    child: SvgPicture.asset('svgs/text_size_large.svg',
                        color: CustomColors.grey),
                    onTap: () {
                      print("large");
                      setState(() {
                        _fontSize = 24.0;
                      });
                    },
                  ),
                  VerticalDivider(
                    color: CustomColors.lightGrey,
                    thickness: 0.7,
                  ),
                  GestureDetector(
                    child: SvgPicture.asset('svgs/line_spacing_small.svg',
                        color: CustomColors.grey),
                    onTap: () {
                      setState(() {
                        _textHeight = 1.2;
                      });
                    },
                  ),
                  GestureDetector(
                    child: SvgPicture.asset('svgs/line_spacing_medium.svg',
                        color: CustomColors.black),
                    onTap: () {
                      setState(() {
                        _textHeight = 1.5;
                      });
                    },
                  ),
                  GestureDetector(
                    child: SvgPicture.asset('svgs/line_spacing_large.svg',
                        color: CustomColors.grey),
                    onTap: () {
                      setState(() {
                        _textHeight = 1.8;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
