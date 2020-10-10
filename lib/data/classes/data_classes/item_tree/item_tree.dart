import 'package:flutter/material.dart';
import 'package:sky_util_app/data/classes/data_classes/item_data/item_data.dart';
import 'package:sky_util_app/data/classes/data_classes/item_tree/tree_row.dart';
import 'package:sky_util_app/data/constants.dart';

class ItemTree {
  ItemTree(List<TreeRow> rows) {
    _initialize(rows);
  }

  void _initialize(List<TreeRow> rows) {
    for (int i = 0; i < rows.length; i++) {
      _rows.putIfAbsent(i, () => rows[i]);
    }
  }

  /// 取得状態の反映
  void initAcquiredData(Map<int, List<bool>> state) {
    state.forEach((index, status) {
      _rows[index].setAcquired(ItemPosition.LEFT, status[0]);
      _rows[index].setAcquired(ItemPosition.CENTER, status[1]);
      _rows[index].setAcquired(ItemPosition.RIGHT, status[2]);
    });
  }

  Map<int, TreeRow> _rows = {};

  /// 獲得状態の変更
  void setAcquired({
    @required int index,
    @required ItemPosition position,
    @required bool isAcquired,
  }) {
    _rows[index].setAcquired(position, isAcquired);
  }

  Map<int, List<bool>> get acquiredData => _rows.map<int, List<bool>>(
      (index, row) => MapEntry<int, List<bool>>(index, row.acquiredList));

  /// 合計: アイテム数
  int get totalItemLength {
    int count = 0;
    _rows.values.forEach((row) {
      if (row.left != null) count++;
      if (row.center != null) count++;
      if (row.right != null) count++;
    });
    return count;
  }

  /// 残り: アイテム数
  int get remainingItemLength {
    int count = 0;
    _rows.values.forEach((row) {
      if (row.left != null && !row.left.isAcquired) count++;
      if (row.center != null && !row.center.isAcquired) count++;
      if (row.right != null && !row.right.isAcquired) count++;
    });
    return count;
  }

  /// 合計: 通常キャンドル数
  int get totalCandles {
    int count = 0;
    _rows.forEach((index, row) {
      count += row.totalCandles;
    });
    return count;
  }

  /// 合計: 星キャンドル数
  int get totalStarCandles {
    int count = 0;
    _rows.forEach((index, row) {
      count += row.totalStarCandles;
    });
    return count;
  }

  /// 残り: ハート数
  int get totalHearts {
    int count = 0;
    _rows.forEach((index, row) {
      count += row.totalHearts;
    });
    return count;
  }

  /// 残り: 通常キャンドル数
  int get remainingCandles {
    int count = 0;
    _rows.forEach((index, row) {
      count += row.remainingCandles;
    });
    return count;
  }

  /// 残り: 星キャンドル数
  int get remainingStarCandles {
    int count = 0;
    _rows.forEach((index, row) {
      count += row.remainingStarCandles;
    });
    return count;
  }

  /// 合計: ハート数
  int get remainingHearts {
    int count = 0;
    _rows.forEach((index, row) {
      count += row.remainingHearts;
    });
    return count;
  }

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

  @override
  String toString() {
    return 'ItemTree{rows:$_rows}';
  }
}
