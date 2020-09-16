import 'package:flutter/material.dart';
import 'package:sky_util_app/mvvm/models/database_manager.dart';

class StarRepository {
  StarRepository({@required this.dbManager});

  final DatabaseManager dbManager;
}
