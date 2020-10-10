import 'package:flutter/material.dart';
import 'package:sky_util_app/data/constants.dart';

class ItemTreeProgress {
  const ItemTreeProgress({
    @required this.stage,
    @required this.spiritId,
    @required this.acquiredData,
  });

  final Stage stage;
  final String spiritId;
  final Map<int, List<bool>> acquiredData;

  ItemTreeProgress copyWith({
    Stage stage,
    String spiritId,
    Map<int, List<bool>> acquiredData,
  }) {
    if ((stage == null || identical(stage, this.stage)) &&
        (spiritId == null || identical(spiritId, this.spiritId)) &&
        (acquiredData == null || identical(acquiredData, this.acquiredData))) {
      return this;
    }

    return new ItemTreeProgress(
      stage: stage ?? this.stage,
      spiritId: spiritId ?? this.spiritId,
      acquiredData: acquiredData ?? this.acquiredData,
    );
  }

  @override
  String toString() {
    return 'ItemTreeProgress{stage: $stage, spiritId: $spiritId, acquiredData: $acquiredData}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemTreeProgress &&
          runtimeType == other.runtimeType &&
          stage == other.stage &&
          spiritId == other.spiritId &&
          acquiredData == other.acquiredData);

  @override
  int get hashCode =>
      stage.hashCode ^ spiritId.hashCode ^ acquiredData.hashCode;

  factory ItemTreeProgress.fromMap(Map<String, dynamic> map) {
    return new ItemTreeProgress(
      stage: _toStage(map['stage']),
      spiritId: map['spiritId'] as String,
      acquiredData: _convertToAcquiredStateMap(map['acquiredData']),
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'stage': _toStageIndex(this.stage),
      'spiritId': this.spiritId,
      'acquiredData': _convertToAcquiredStateList(this.acquiredData),
    } as Map<String, dynamic>;
  }
}

int _toStageIndex(Stage stage) {
  if (stage == null) {
    return null;
  }
  return stage.index;
}

Stage _toStage(int index) {
  if (index == null) {
    return null;
  }
  return Stage.values[index];
}

List<String> _convertToAcquiredStateList(Map<int, List<bool>> acquiredState) {
  if (acquiredState == null || acquiredState.isEmpty) {
    return null;
  }

  List<String> resultList = [];

  final entries = acquiredState.entries.toList();

  resultList = List<MapEntry<int, List<bool>>>.from(entries)
      .map<String>(
          (e) => '${e.key}:${e.value.map((flag) => flag ? 1 : 0).join('_')}')
      .toList();

  return resultList;
}

Map<int, List<bool>> _convertToAcquiredStateMap(dynamic list) {
  if (list == null) {
    return null;
  }

  Map<int, List<bool>> resultMap = {};

  final List<String> casted = (list as List).cast<String>();

  casted.forEach((text) {
    final afterSplit = text.split(':');
    resultMap.putIfAbsent(
      // key
      int.parse(afterSplit[0]),
      //value
      () {
        return afterSplit[1].split('_').map<bool>((t) => t == '1').toList();
      },
    );
  });

  return resultMap;
}
