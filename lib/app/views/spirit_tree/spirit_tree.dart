import 'package:flutter/material.dart';
import 'package:sky_util_app/app/views/common_components/list_widgets/fade_list_view_builder.dart';
import 'package:sky_util_app/app/views/spirit_tree/components/stage_list_tile.dart';
import 'package:sky_util_app/data/constants.dart';
import 'package:sky_util_app/data/image_path.dart';
import 'package:sky_util_app/util/functions/get_stage_name.dart';

class SpiritTreePage extends StatelessWidget {
  //TODO: 各ステージアイコンの指定
  static final _stageDataEntries = <Stage, String>{
    Stage.ISLE_OF_DAWN: ImagePath.ic_tree_unlock,
    Stage.DAYLIGHT_PRAIRIE: ImagePath.ic_tree_unlock,
    Stage.HIDDEN_FOREST: ImagePath.ic_tree_unlock,
    Stage.VALLEY_OF_TRIUMPH: ImagePath.ic_tree_unlock,
    Stage.GOLDEN_WASTELAND: ImagePath.ic_tree_unlock,
    Stage.VAULT_OF_KNOWLEDGE: ImagePath.ic_tree_unlock,
  }.entries.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
        child: FadeListViewBuilder(
          itemCount: _stageDataEntries.length,
          builder: (context, index) {
            final entry = _stageDataEntries[index];
            return StageListTile(
              imageUrl: entry.value,
              name: getStageName(entry.key),
              onTap: () => _pushToStageScreen(context, entry.key),
            );
          },
        ),
      ),
    );
  }

  /// タップしたステージへ遷移する
  void _pushToStageScreen(BuildContext context, Stage stage) {
    Widget screen;

    switch (stage) {
      case Stage.ISLE_OF_DAWN:
        //TODO: ステージ画面の指定
        screen = Container();
        break;
      case Stage.DAYLIGHT_PRAIRIE:
        //TODO: ステージ画面の指定
        screen = Container();
        break;
      case Stage.HIDDEN_FOREST:
        //TODO: ステージ画面の指定
        screen = Container();
        break;
      case Stage.VALLEY_OF_TRIUMPH:
        //TODO: ステージ画面の指定
        screen = Container();
        break;
      case Stage.GOLDEN_WASTELAND:
        //TODO: ステージ画面の指定
        screen = Container();
        break;
      case Stage.VAULT_OF_KNOWLEDGE:
        //TODO: ステージ画面の指定
        screen = Container();
        break;
      default:
        screen = Container();
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }
}
