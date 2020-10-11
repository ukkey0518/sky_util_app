import 'package:flutter/material.dart';
import 'package:sky_util_app/data/classes/data_classes/item_tree/item_tree.dart';
import 'package:sky_util_app/data/constants.dart';

class SpiritData {
  const SpiritData({
    @required this.stage,
    @required this.number,
    @required this.name,
    @required this.itemTree,
    @required this.imagePath,
  });

  final Stage stage;
  final String number;
  final String name;
  final ItemTree itemTree;
  final String imagePath;

  SpiritData copyWith({
    Stage stage,
    String number,
    String name,
    ItemTree itemTree,
    String imagePath,
  }) {
    if ((stage == null || identical(stage, this.stage)) &&
        (number == null || identical(number, this.number)) &&
        (name == null || identical(name, this.name)) &&
        (itemTree == null || identical(itemTree, this.itemTree)) &&
        (imagePath == null || identical(imagePath, this.imagePath))) {
      return this;
    }

    return new SpiritData(
      stage: stage ?? this.stage,
      number: number ?? this.number,
      name: name ?? this.name,
      itemTree: itemTree ?? this.itemTree,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  String toString() {
    return 'SpiritData{stage: $stage, number: $number, name: $name, itemTree: $itemTree, imagePath: $imagePath}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpiritData &&
          runtimeType == other.runtimeType &&
          stage == other.stage &&
          number == other.number &&
          name == other.name &&
          itemTree == other.itemTree &&
          imagePath == other.imagePath);

  @override
  int get hashCode =>
      stage.hashCode ^
      number.hashCode ^
      name.hashCode ^
      itemTree.hashCode ^
      imagePath.hashCode;

  factory SpiritData.fromMap(Map<String, dynamic> map) {
    return new SpiritData(
      stage: map['stage'] as Stage,
      number: map['number'] as String,
      name: map['name'] as String,
      itemTree: map['itemTree'] as ItemTree,
      imagePath: map['imagePath'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'stage': this.stage,
      'number': this.number,
      'name': this.name,
      'itemTree': this.itemTree,
      'imagePath': this.imagePath,
    } as Map<String, dynamic>;
  }
}
