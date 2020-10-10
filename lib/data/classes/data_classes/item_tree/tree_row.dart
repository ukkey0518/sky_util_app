import 'package:flutter/material.dart';
import 'package:sky_util_app/data/classes/data_classes/item_data/item_data.dart';
import 'package:sky_util_app/data/constants.dart';

class TreeRow {
  TreeRow({
    ItemData left,
    @required ItemData center,
    ItemData right,
  })  : this._left = left,
        this._center = center,
        this._right = right;

  ItemData _left;
  ItemData _center;
  ItemData _right;

  ItemData get left => _left;

  ItemData get center => _center;

  ItemData get right => _right;

  List<bool> get acquiredList => <bool>[
        _left?.isAcquired,
        _center?.isAcquired,
        _right?.isAcquired,
      ];

  /// 合計: 通常キャンドル数
  int get totalCandles {
    int count = 0;
    if (left != null && left.price.payType == PayType.NORMAL_CANDLE) {
      count += left.price.price;
    }
    if (center != null && center.price.payType == PayType.NORMAL_CANDLE) {
      count += center.price.price;
    }
    if (right != null && right.price.payType == PayType.NORMAL_CANDLE) {
      count += right.price.price;
    }
    return count;
  }

  /// 合計: 星キャンドル数
  int get totalStarCandles {
    int count = 0;
    if (left != null && left.price.payType == PayType.STAR_CANDLE) {
      count += left.price.price;
    }
    if (center != null && center.price.payType == PayType.STAR_CANDLE) {
      count += center.price.price;
    }
    if (right != null && right.price.payType == PayType.STAR_CANDLE) {
      count += right.price.price;
    }
    return count;
  }

  /// 合計: ハート数
  int get totalHearts {
    int count = 0;
    if (left != null && left.price.payType == PayType.HEART) {
      count += left.price.price;
    }
    if (center != null && center.price.payType == PayType.HEART) {
      count += center.price.price;
    }
    if (right != null && right.price.payType == PayType.HEART) {
      count += right.price.price;
    }
    return count;
  }

  /// 残り: 通常キャンドル数
  int get remainingCandles {
    int count = 0;
    if (left != null &&
        !left.isAcquired &&
        left.price.payType == PayType.NORMAL_CANDLE) {
      count += left.price.price;
    }
    if (center != null &&
        !center.isAcquired &&
        center.price.payType == PayType.NORMAL_CANDLE) {
      count += center.price.price;
    }
    if (right != null &&
        !right.isAcquired &&
        right.price.payType == PayType.NORMAL_CANDLE) {
      count += right.price.price;
    }
    return count;
  }

  /// 残り: 星キャンドル数
  int get remainingStarCandles {
    int count = 0;
    if (left != null &&
        !left.isAcquired &&
        left.price.payType == PayType.STAR_CANDLE) {
      count += left.price.price;
    }
    if (center != null &&
        !center.isAcquired &&
        center.price.payType == PayType.STAR_CANDLE) {
      count += center.price.price;
    }
    if (right != null &&
        !right.isAcquired &&
        right.price.payType == PayType.STAR_CANDLE) {
      count += right.price.price;
    }
    return count;
  }

  /// 残り: ハート数
  int get remainingHearts {
    int count = 0;
    if (left != null &&
        !left.isAcquired &&
        left.price.payType == PayType.HEART) {
      count += left.price.price;
    }
    if (center != null &&
        !center.isAcquired &&
        center.price.payType == PayType.HEART) {
      count += center.price.price;
    }
    if (right != null &&
        !right.isAcquired &&
        right.price.payType == PayType.HEART) {
      count += right.price.price;
    }
    return count;
  }

  /// 獲得状態の変更
  void setAcquired(ItemPosition position, bool isAcquired) {
    switch (position) {
      case ItemPosition.LEFT:
        if (_left != null) _left.isAcquired = isAcquired;
        break;
      case ItemPosition.CENTER:
        if (_center != null) _center.isAcquired = isAcquired;
        break;
      case ItemPosition.RIGHT:
        if (right != null) _right.isAcquired = isAcquired;
        break;
    }
  }

  /// アイテムのセット
  void setItem(ItemPosition position, ItemData item) {
    switch (position) {
      case ItemPosition.LEFT:
        _left = item;
        break;
      case ItemPosition.CENTER:
        _center = item;
        break;
      case ItemPosition.RIGHT:
        _right = item;
        break;
    }
  }

  /// アイテムの取得
  ItemData getItem(ItemPosition position) {
    var item;
    switch (position) {
      case ItemPosition.LEFT:
        item = _left;
        break;
      case ItemPosition.CENTER:
        item = _center;
        break;
      case ItemPosition.RIGHT:
        item = _right;
        break;
    }
    return item;
  }

  @override
  String toString() {
    return 'TreeRow{L:$left, C:$center, R:$right}';
  }
}
