import 'package:flutter/material.dart';
import 'package:sky_util_app/data/classes/data_classes/item_data/item_data.dart';
import 'package:sky_util_app/data/classes/data_classes/item_tree/tree_row.dart';
import 'package:sky_util_app/data/constants.dart';

class ItemTree {
  ItemTree(List<TreeRow> rows) {
    _initialize(rows);
  }

  void _initialize(List<TreeRow> rows) {
    for (int i = 0; i <= rows.length; i++) {
      _rows.putIfAbsent(i, () => rows[i]);
    }
  }

  Map<int, TreeRow> _rows = {};

  /// TreeRowのセット
  void setRow({
    @required int index,
    @required TreeRow row,
  }) {
    _rows[index] = row;
  }

  /// TreeRowの取得
  TreeRow getRow({
    @required int index,
    @required ItemPosition position,
  }) {
    return _rows[index];
  }

  /// アイテムのセット
  void setItem({
    @required int index,
    @required ItemPosition position,
    @required ItemData item,
  }) {
    _rows[index].setItem(position, item);
  }

  /// アイテムの取得
  ItemData getItem({
    @required int index,
    @required ItemPosition position,
  }) {
    return _rows[index].getItem(position);
  }

  /// 取得状態の反映
  void initAcquiredState(Map<int, List<bool>> state) {
    state.forEach((index, status) {
      _rows[index].setAcquired(ItemPosition.LEFT, status[0]);
      _rows[index].setAcquired(ItemPosition.CENTER, status[1]);
      _rows[index].setAcquired(ItemPosition.RIGHT, status[2]);
    });
  }

  /// 獲得状態の変更
  void setAcquired({
    @required int index,
    @required ItemPosition position,
    @required bool isAcquired,
  }) {
    _rows[index].setAcquired(position, isAcquired);
  }
}
