import 'package:audioplayers/audioplayers.dart';
import 'package:ciyu/styles/custom_colors.dart';
import 'package:ciyu/styles/theme.dart';
import 'package:ciyu_api/ciyu_api.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timelines/timelines.dart';

import '../providers/bond_provider.dart';
import '../providers/word_provider.dart';

class WordPage extends HookConsumerWidget {
  final String wordId;
  final List<Color> gradientColors = const [
    Color(0xff23b6e6),
    Color(0xff02d39a),
  ];

  const WordPage(this.wordId, {Key? key}) : super(key: key);

  static Route route(String wordId) {
    return MaterialPageRoute<void>(builder: (_) => WordPage(wordId));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ValueNotifier<bool> showAvg = useState(false);
    AsyncValue<WordDto> word = ref.watch(wordProvider(wordId));
    return Scaffold(
      appBar: AppBar(
        title: Text(wordId),
        actions: [
          if (word is AsyncData)
            IconButton(
              onPressed: () {
                final isBonded = ref.watch(isBondedProvider(wordId));
                AsyncValue<WordDto> word = ref.watch(wordProvider(wordId));
                final hasBondNotifier =
                    ref.read(hasBondProvider(wordId).notifier);
              },
              icon: word.value!.hasBond!
                  ? Icon(Icons.bookmark)
                  : Icon(Icons.bookmark_add_outlined),
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          child: Column(
            crossAxisAlignment: word is AsyncLoading
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              word.when(
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
                          onTap: () =>
                              AudioPlayer().play(UrlSource(phonetic.audio!)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                loading: () => Container(),
              ),
              if (word is AsyncData) SizedBox(height: 12),
              word.when(
                data: (data) => _buildMeanings(data.meanings!.toList()),
                error: (error, stackTrace) => Text("查询失败"),
                loading: () => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox.square(
                      dimension: 16,
                      child: CircularProgressIndicator(strokeWidth: 2)),
                ),
              ),
              if (word is AsyncData) SizedBox(height: 24),
              if (word is AsyncData)
                AspectRatio(
                  aspectRatio: 1.70,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Color(0xff232d37),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 18,
                        left: 12,
                        top: 24,
                        bottom: 12,
                      ),
                      child: LineChart(
                        showAvg.value ? avgData() : mainData(),
                      ),
                    ),
                  ),
                ),
              if (word is AsyncData) SizedBox(height: 24),
              if (word is AsyncData)
                FixedTimeline.tileBuilder(
                theme: TimelineTheme.of(context).copyWith(
                  nodePosition: 0,
                  connectorTheme:
                      TimelineTheme.of(context).connectorTheme.copyWith(
                            thickness: 0.8,
                            color: CustomColors.normal,
                          ),
                  indicatorTheme:
                      TimelineTheme.of(context).indicatorTheme.copyWith(
                            size: 6,
                            position: 0,
                            color: CustomColors.normal,
                          ),
                ),
                builder: TimelineTileBuilder(
                  contentsAlign: ContentsAlign.basic,
                  contentsBuilder: (context, index) => Transform.translate(
                    // e.g: vertical negative margin
                    offset: Offset(0, -(textTheme.bodySmall!.height! * textTheme.bodySmall!.fontSize! / 2 - 6 / 2)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$index天前',
                            style: textTheme.bodySmall!.copyWith(
                                fontFamily: "SF Pro Text",
                                color: CustomColors.lightGrey),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Three recipients awarded highest military honor',
                            style: textTheme.titleMedium!,
                          ),
                        ],
                      ),
                    ),
                  ),
                  startConnectorBuilder: (_, index) =>
                      index == 0 ? null : Connector.solidLine(),
                  endConnectorBuilder: (_, index) => Connector.solidLine(),
                  indicatorBuilder: (_, index) => DotIndicator(),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
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

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontSize: 12,
      fontFamily: 'SF Pro Text',
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('1天后', style: style);
        break;
      case 5:
        text = const Text('2天后', style: style);
        break;
      case 8:
        text = const Text('1月后', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontSize: 12,
      fontFamily: 'SF Pro Text',
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10%';
        break;
      case 3:
        text = '50%';
        break;
      case 6:
        text = '100%';
        break;
      default:
        return Container();
    }
    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
