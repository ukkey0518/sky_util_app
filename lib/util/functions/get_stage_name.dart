import 'package:sky_util_app/data/constants.dart';

String getStageName(Stage stage) {
  var name;
  switch (stage) {
    case Stage.ISLE_OF_DAWN:
      name = '孤島';
      break;
    case Stage.DAYLIGHT_PRAIRIE:
      name = '草原';
      break;
    case Stage.HIDDEN_FOREST:
      name = '雨林';
      break;
    case Stage.VALLEY_OF_TRIUMPH:
      name = '峡谷';
      break;
    case Stage.GOLDEN_WASTELAND:
      name = '捨てられた地';
      break;
    case Stage.VAULT_OF_KNOWLEDGE:
      name = '書庫';
      break;
    case Stage.STORM:
      name = '暴風域';
      break;
  }
  return name;
}
