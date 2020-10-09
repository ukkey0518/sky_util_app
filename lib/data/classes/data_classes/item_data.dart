import 'package:flutter/material.dart';
import 'package:sky_util_app/data/constants.dart';

class ItemData {
  const ItemData({
    @required this.id,
    @required this.itemTypeIndex,
    @required this.name,
    @required this.payTypeIndex,
    @required this.price,
    @required this.imagePath,
  });

  ItemData.magic({
    @required this.id,
    @required this.payTypeIndex,
    @required bool isSmall,
    @required this.price,
    @required this.imagePath,
  })  : this.name = '魔法(${isSmall ? '小' : '大'})',
        this.itemTypeIndex = ItemType.MAGIC.index;

  ItemData.outfit({
    @required this.id,
    @required this.name,
    @required this.payTypeIndex,
    @required this.price,
    @required this.imagePath,
  }) : this.itemTypeIndex = ItemType.OUTFIT.index;

  ItemData.expression({
    @required this.id,
    @required this.name,
    @required this.payTypeIndex,
    @required this.price,
    @required this.imagePath,
  }) : this.itemTypeIndex = ItemType.EXPRESSION.index;

  ItemData.heart({
    @required this.id,
    @required this.price,
  })  : this.name = 'ハート',
        this.payTypeIndex = PayType.NORMAL_CANDLE.index,
        this.itemTypeIndex = ItemType.MAGIC.index,
        //TODO: 画像パス指定
        this.imagePath = null;

  ItemData.lock({
    @required this.id,
    @required this.price,
  })  : this.name = 'アンロック',
        this.itemTypeIndex = ItemType.MAGIC.index,
        this.payTypeIndex = PayType.STAR_CANDLE.index,
        //TODO: 画像パス指定
        this.imagePath = null;

  final String id;
  final int itemTypeIndex;
  final String name;
  final int payTypeIndex;
  final int price;
  final String imagePath;

  ItemData copyWith({
    String id,
    int itemTypeIndex,
    String name,
    int payTypeIndex,
    int price,
    String imagePath,
  }) {
    if ((id == null || identical(id, this.id)) &&
        (itemTypeIndex == null ||
            identical(itemTypeIndex, this.itemTypeIndex)) &&
        (name == null || identical(name, this.name)) &&
        (payTypeIndex == null || identical(payTypeIndex, this.payTypeIndex)) &&
        (price == null || identical(price, this.price)) &&
        (imagePath == null || identical(imagePath, this.imagePath))) {
      return this;
    }

    return new ItemData(
      id: id ?? this.id,
      itemTypeIndex: itemTypeIndex ?? this.itemTypeIndex,
      name: name ?? this.name,
      payTypeIndex: payTypeIndex ?? this.payTypeIndex,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  String toString() {
    return 'ItemData{id: $id, itemTypeIndex: $itemTypeIndex, name: $name, payTypeIndex: $payTypeIndex, price: $price, imagePath: $imagePath}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemData &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          itemTypeIndex == other.itemTypeIndex &&
          name == other.name &&
          payTypeIndex == other.payTypeIndex &&
          price == other.price &&
          imagePath == other.imagePath);

  @override
  int get hashCode =>
      id.hashCode ^
      itemTypeIndex.hashCode ^
      name.hashCode ^
      payTypeIndex.hashCode ^
      price.hashCode ^
      imagePath.hashCode;

  factory ItemData.fromMap(Map<String, dynamic> map) {
    return new ItemData(
      id: map['id'] as String,
      itemTypeIndex: map['itemTypeIndex'] as int,
      name: map['name'] as String,
      payTypeIndex: map['payTypeIndex'] as int,
      price: map['price'] as int,
      imagePath: map['imagePath'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'itemTypeIndex': this.itemTypeIndex,
      'name': this.name,
      'payTypeIndex': this.payTypeIndex,
      'price': this.price,
      'imagePath': this.imagePath,
    } as Map<String, dynamic>;
  }
}
