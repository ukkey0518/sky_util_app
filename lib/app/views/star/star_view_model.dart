import 'package:flutter/material.dart';
import 'package:sky_util_app/app/repositories/star_repository.dart';

class StarViewModel extends ChangeNotifier {
  StarViewModel({@required this.rep});

  final StarRepository rep;
}
