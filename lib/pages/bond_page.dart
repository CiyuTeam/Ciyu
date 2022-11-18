import 'package:ciyu/pages/glossary_page.dart';
import 'package:ciyu/pages/word_page.dart';
import 'package:ciyu/providers/bond_provider.dart';
import 'package:ciyu/providers/word_provider.dart';
import 'package:ciyu/styles/custom_colors.dart';
import 'package:ciyu/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BondPage extends HookConsumerWidget {
  const BondPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const BondPage());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bonds = ref.watch(bondsProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => _showGlossaryModal(context),
            icon: Icon(Icons.electric_bolt),
          ),
          IconButton(
            onPressed: () => _showGlossaryModal(context),
            icon: Icon(Icons.book),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: bonds.when(
            data: (data) => StaggeredGrid.count(
              crossAxisCount: 3,
              children: data
                  .map(
                    (bond) => GestureDetector(
                      onTap: () => Navigator.of(context)
                          .push(WordPage.route(bond.word!.id!)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          bond.word!.id!,
                          style: textTheme.bodyLarge!.copyWith(
                              color: Color.fromARGB(
                                  (220 * bond.strength! * bond.strength!)
                                          .toInt() +
                                      30,
                                  0,
                                  0,
                                  0)),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            error: (error, stackTrace) => Center(child: Text("获取失败\n$error")),
            loading: () => Center(child: CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }

  void _showGlossaryModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      builder: _buildGlossaryModal,
    );
  }

  Widget _buildGlossaryModal(BuildContext context) {
    return SingleChildScrollView(
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 4, 8, 0),
              child: AppBar(
                title: Text("单词书"),
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    onPressed: () => Navigator.of(context).push(GlossaryPage.route()),
                    icon: Icon(Icons.add),
                  )
                ],
                titleSpacing: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 24),
              child: Text("添加后，阅读推荐将会优先覆盖书中的词汇", style: textTheme.bodySmall!.copyWith(color: CustomColors.lightGrey),),
            )
          ],
        ),
      ),
    );
  }
}
