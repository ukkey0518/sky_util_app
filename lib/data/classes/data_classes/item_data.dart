import 'package:flutter/material.dart';
import 'package:sky_util_app/data/constants.dart';

class ItemData {
  const ItemData({
    @required this.id,
    @required this.itemType,
    @required this.payType,
    @required this.price,
    @required this.imagePath,
  });

  const ItemData.free({
    @required this.id,
    @required this.itemType,
    @required this.imagePath,
  })  : this.payType = PayType.FREE,
        this.price = 0;

  const ItemData.normal({
    @required this.id,
    @required this.itemType,
    @required this.price,
    @required this.imagePath,
  }) : this.payType = PayType.NORMAL_CANDLE;

  const ItemData.star({
    @required this.id,
    @required this.itemType,
    @required this.price,
    @required this.imagePath,
  }) : this.payType = PayType.STAR_CANDLE;

  const ItemData.heart({
    @required this.id,
    @required this.itemType,
    @required this.price,
    @required this.imagePath,
  }) : this.payType = PayType.HEART;

  final String id;
  final ItemType itemType;
  final PayType payType;
  final int price;
  final String imagePath;

  ItemData copyWith({
    String id,
    ItemType itemType,
    PayType payType,
    int price,
    String imagePath,
  }) {
    if ((id == null || identical(id, this.id)) &&
        (itemType == null || identical(itemType, this.itemType)) &&
        (payType == null || identical(payType, this.payType)) &&
        (price == null || identical(price, this.price)) &&
        (imagePath == null || identical(imagePath, this.imagePath))) {
      return this;
    }

    return new ItemData(
      id: id ?? this.id,
      itemType: itemType ?? this.itemType,
      payType: payType ?? this.payType,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  String toString() {
    return 'ItemData{id: $id, itemType: $itemType, payType: $payType, price: $price, imagePath: $imagePath}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemData &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          itemType == other.itemType &&
          payType == other.payType &&
          price == other.price &&
          imagePath == other.imagePath);

  @override
  int get hashCode =>
      id.hashCode ^
      itemType.hashCode ^
      payType.hashCode ^
      price.hashCode ^
      imagePath.hashCode;

  factory ItemData.fromMap(Map<String, dynamic> map) {
    return new ItemData(
      id: map['id'] as String,
      itemType: map['itemType'] as ItemType,
      payType: map['payType'] as PayType,
      price: map['price'] as int,
      imagePath: map['imagePath'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'itemType': this.itemType,
      'payType': this.payType,
      'price': this.price,
      'imagePath': this.imagePath,
    } as Map<String, dynamic>;
  }
}
