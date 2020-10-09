import 'package:flutter/material.dart';
import 'package:sky_util_app/app/repositories/spirit_tree_repository.dart';

class SpiritTreeViewModel extends ChangeNotifier {
  SpiritTreeViewModel({@required this.rep});

  final SpiritTreeRepository rep;
}
