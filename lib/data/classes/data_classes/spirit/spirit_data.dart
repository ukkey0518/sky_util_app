import 'package:flutter/material.dart';
import 'package:sky_util_app/data/classes/data_classes/item_tree/item_tree.dart';
import 'package:sky_util_app/data/constants.dart';

class SpiritData {
  const SpiritData({
    @required this.stage,
    @required this.number,
    @required this.name,
    @required this.imagePath,
    @required this.itemTree,
  });

  final Stage stage;
  final int number;
  final String name;
  final String imagePath;
  final ItemTree itemTree;

  SpiritData copyWith({
    Stage stage,
    int number,
    String name,
    String imagePath,
    ItemTree itemTree,
  }) {
    if ((stage == null || identical(stage, this.stage)) &&
        (number == null || identical(number, this.number)) &&
        (name == null || identical(name, this.name)) &&
        (imagePath == null || identical(imagePath, this.imagePath)) &&
        (itemTree == null || identical(itemTree, this.itemTree))) {
      return this;
    }

    return new SpiritData(
      stage: stage ?? this.stage,
      number: number ?? this.number,
      name: name ?? this.name,
      imagePath: imagePath ?? this.imagePath,
      itemTree: itemTree ?? this.itemTree,
    );
  }

  @override
  String toString() {
    return 'SpiritData{stage: $stage, number: $number, name: $name, imagePath: $imagePath, itemTree: $itemTree}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpiritData &&
          runtimeType == other.runtimeType &&
          stage == other.stage &&
          number == other.number &&
          name == other.name &&
          imagePath == other.imagePath &&
          itemTree == other.itemTree);

  @override
  int get hashCode =>
      stage.hashCode ^
      number.hashCode ^
      name.hashCode ^
      imagePath.hashCode ^
      itemTree.hashCode;
}
