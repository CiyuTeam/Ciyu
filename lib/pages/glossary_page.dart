import 'package:ciyu/styles/custom_colors.dart';
import 'package:ciyu/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GlossaryPage extends HookConsumerWidget {
  const GlossaryPage({
    Key? key,
  }) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const GlossaryPage());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("选择单词书"),
            Text(
              "阅读推荐将会优先覆盖书中的词汇",
              style: textTheme.bodySmall!.copyWith(color: CustomColors.lightGrey),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildLegend(color: Colors.black, title: "熟识词"),
                _buildLegend(color: Color(0xff2d9fdf), title: "已规划"),
                _buildLegend(color: Color(0xffffe560), title: "将会遇到"),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
              child: _buildGlossaryEntry(),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildLegend({required Color color, required String title}) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          color: color,
        ),
        SizedBox(width: 8),
        Text(title,
            style: textTheme.bodySmall!.copyWith(color: CustomColors.grey)),
      ],
    );
  }

  Widget _buildGlossaryEntry() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "考研词汇宝典",
              style: textTheme.titleMedium!,
            ),
            SizedBox(width: 12),
            Text(
              "53 / 366",
              style:
                  textTheme.bodySmall!.copyWith(color: CustomColors.lightGrey),
            ),
          ],
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 8,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xff2d9fdf),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xffffe560),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
