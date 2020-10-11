import 'package:flutter/material.dart';
import 'package:sky_util_app/data/classes/data_classes/item_tree/item_tree.dart';
import 'package:sky_util_app/data/constants.dart';

class SpiritData {
  const SpiritData({
    @required this.id,
    @required this.stage,
    @required this.name,
    @required this.itemTree,
    @required this.imagePath,
  });

  final String id;
  final Stage stage;
  final String name;
  final ItemTree itemTree;
  final String imagePath;

  SpiritData copyWith({
    String id,
    Stage stage,
    String name,
    ItemTree itemTree,
    String imagePath,
  }) {
    if ((id == null || identical(id, this.id)) &&
        (stage == null || identical(stage, this.stage)) &&
        (name == null || identical(name, this.name)) &&
        (itemTree == null || identical(itemTree, this.itemTree)) &&
        (imagePath == null || identical(imagePath, this.imagePath))) {
      return this;
    }

    return new SpiritData(
      id: id ?? this.id,
      stage: stage ?? this.stage,
      name: name ?? this.name,
      itemTree: itemTree ?? this.itemTree,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  String toString() {
    return 'SpiritData{id: $id, stage: $stage, name: $name, itemTree: $itemTree, imagePath: $imagePath}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpiritData &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          stage == other.stage &&
          name == other.name &&
          itemTree == other.itemTree &&
          imagePath == other.imagePath);

  @override
  int get hashCode =>
      id.hashCode ^
      stage.hashCode ^
      name.hashCode ^
      itemTree.hashCode ^
      imagePath.hashCode;

  factory SpiritData.fromMap(Map<String, dynamic> map) {
    return new SpiritData(
      id: map['id'] as String,
      stage: map['stage'] as Stage,
      name: map['name'] as String,
      itemTree: map['itemTree'] as ItemTree,
      imagePath: map['imagePath'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'stage': this.stage,
      'name': this.name,
      'itemTree': this.itemTree,
      'imagePath': this.imagePath,
    } as Map<String, dynamic>;
  }
}
