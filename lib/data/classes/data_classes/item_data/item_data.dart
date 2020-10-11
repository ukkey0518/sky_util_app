import 'package:flutter/material.dart';
import 'package:sky_util_app/data/classes/data_classes/price_data/price.dart';
import 'package:sky_util_app/data/constants.dart';

abstract class ItemData {
  ItemData({
    @required this.itemType,
    @required this.price,
    @required this.imagePath,
    @required this.isAcquired,
  });

  final ItemType itemType;
  final Price price;
  final String imagePath;
  bool isAcquired;

  @override
  String toString() {
    var className;
    switch (itemType) {
      case ItemType.MAGIC_SMALL:
        className = 'SmallMagic';
        break;
      case ItemType.MAGIC_BIG:
        className = 'BigMagic';
        break;
      case ItemType.OUTFIT_PANTS:
        className = 'OutFitPants';
        break;
      case ItemType.OUTFIT_MASK:
        className = 'OutFitMask';
        break;
      case ItemType.OUTFIT_HAIR:
        className = 'OutFitHair';
        break;
      case ItemType.OUTFIT_CAPE:
        className = 'OutFitCape';
        break;
      case ItemType.OUTFIT_ITEM:
        className = 'OutFitItem';
        break;
      case ItemType.EXPRESSION_1:
        className = 'Expression1';
        break;
      case ItemType.EXPRESSION_2:
        className = 'Expression2';
        break;
      case ItemType.EXPRESSION_3:
        className = 'Expression3';
        break;
      case ItemType.EXPRESSION_4:
        className = 'Expression4';
        break;
      case ItemType.EXPRESSION_5:
        className = 'Expression5';
        break;
      case ItemType.EXPRESSION_6:
        className = 'Expression6';
        break;
      case ItemType.STYLE:
        className = 'Style';
        break;
      case ItemType.CALL:
        className = 'Call';
        break;
      case ItemType.SCORE:
        className = 'Score';
        break;
      case ItemType.HEART:
        className = 'Heart';
        break;
      case ItemType.TREE_UNLOCK:
        className = 'TreeUnLock';
        break;
    }
    return '$className{price:$price, imagePath:$imagePath, isAcquired:$isAcquired}';
  }
}

// 魔法(小)
class SmallMagic extends ItemData {
  SmallMagic(Price price)
      : super(
          itemType: ItemType.MAGIC_SMALL,
          price: price,
          //TODO: 画像パスの指定
          imagePath: null,
          isAcquired: false,
        );
}

// 魔法(大)
class BigMagic extends ItemData {
  BigMagic(Price price)
      : super(
          itemType: ItemType.MAGIC_BIG,
          price: price,
          //TODO: 画像パスの指定
          imagePath: null,
          isAcquired: false,
        );
}

// 衣装(パンツ)
class OutFitPants extends ItemData {
  OutFitPants(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_PANTS,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 衣装(顔)
class OutFitMask extends ItemData {
  OutFitMask(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_MASK,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 衣装(ヘアスタイル)
class OutFitHair extends ItemData {
  OutFitHair(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_HAIR,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 衣装(ケープ)
class OutFitCape extends ItemData {
  OutFitCape(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_CAPE,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 衣装(アイテム)
class OutFitItem extends ItemData {
  OutFitItem(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_ITEM,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 感情表現(レベル1)
class Expression1 extends ItemData {
  Expression1(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_1,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 感情表現(レベル2)
class Expression2 extends ItemData {
  Expression2(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_2,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 感情表現(レベル3)
class Expression3 extends ItemData {
  Expression3(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_3,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 感情表現(レベル4)
class Expression4 extends ItemData {
  Expression4(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_4,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 感情表現(レベル5)
class Expression5 extends ItemData {
  Expression5(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_5,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 感情表現(レベル6)
class Expression6 extends ItemData {
  Expression6(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_6,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// スタイル(立ち方)
class Style extends ItemData {
  Style(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.STYLE,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 鳴き声
class Call extends ItemData {
  Call(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.CALL,
          price: price,
          imagePath: imagePath,
          isAcquired: false,
        );
}

// 楽譜
class Score extends ItemData {
  Score(Price price)
      : super(
          itemType: ItemType.SCORE,
          price: price,
          //TODO: 画像パスの指定
          imagePath: null,
          isAcquired: false,
        );
}

// ハート
class Heart extends ItemData {
  Heart(Price price)
      : super(
          itemType: ItemType.SCORE,
          price: price,
          //TODO: 画像パスの指定
          imagePath: null,
          isAcquired: false,
        );
}

// ツリー開放
class TreeUnLock extends ItemData {
  TreeUnLock(Price price)
      : super(
          itemType: ItemType.TREE_UNLOCK,
          price: price,
          //TODO: 画像パスの指定
          imagePath: null,
          isAcquired: false,
        );
}
