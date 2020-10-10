import 'package:flutter/material.dart';
import 'package:sky_util_app/data/classes/data_classes/price_data/price.dart';
import 'package:sky_util_app/data/constants.dart';

abstract class ItemData {
  const ItemData({
    @required this.itemType,
    @required this.price,
    @required this.imagePath,
  });

  final ItemType itemType;
  final Price price;
  final String imagePath;
}

// 魔法(小)
class SmallMagic extends ItemData {
  SmallMagic(Price price)
      : super(
          itemType: ItemType.MAGIC_SMALL,
          price: price,
          //TODO: 画像パスの指定
          imagePath: null,
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
        );
}

// 衣装(パンツ)
class OutFitPants extends ItemData {
  OutFitPants(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_PANTS,
          price: price,
          imagePath: imagePath,
        );
}

// 衣装(顔)
class OutFitMask extends ItemData {
  OutFitMask(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_MASK,
          price: price,
          imagePath: imagePath,
        );
}

// 衣装(ヘアスタイル)
class OutFitHair extends ItemData {
  OutFitHair(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_HAIR,
          price: price,
          imagePath: imagePath,
        );
}

// 衣装(ケープ)
class OutFitCape extends ItemData {
  OutFitCape(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_CAPE,
          price: price,
          imagePath: imagePath,
        );
}

// 衣装(アイテム)
class OutFitItem extends ItemData {
  OutFitItem(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.OUTFIT_ITEM,
          price: price,
          imagePath: imagePath,
        );
}

// 感情表現(レベル1)
class Expression1 extends ItemData {
  Expression1(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_1,
          price: price,
          imagePath: imagePath,
        );
}

// 感情表現(レベル2)
class Expression2 extends ItemData {
  Expression2(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_2,
          price: price,
          imagePath: imagePath,
        );
}

// 感情表現(レベル3)
class Expression3 extends ItemData {
  Expression3(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_3,
          price: price,
          imagePath: imagePath,
        );
}

// 感情表現(レベル4)
class Expression4 extends ItemData {
  Expression4(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_4,
          price: price,
          imagePath: imagePath,
        );
}

// 感情表現(レベル5)
class Expression5 extends ItemData {
  Expression5(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_5,
          price: price,
          imagePath: imagePath,
        );
}

// 感情表現(レベル6)
class Expression6 extends ItemData {
  Expression6(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.EXPRESSION_6,
          price: price,
          imagePath: imagePath,
        );
}

// 鳴き声
class Call extends ItemData {
  Call(Price price, {@required String imagePath})
      : super(
          itemType: ItemType.CALL,
          price: price,
          imagePath: imagePath,
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
        );
}
