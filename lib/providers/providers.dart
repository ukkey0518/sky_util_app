import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sky_util_app/app/models/database_manager.dart';
import 'package:sky_util_app/app/repositories/spirit_tree_repository.dart';
import 'package:sky_util_app/app/repositories/star_repository.dart';
import 'package:sky_util_app/app/views/spirit_tree/spirit_tree_view_model.dart';
import 'package:sky_util_app/app/views/star/star_view_model.dart';

List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

List<SingleChildWidget> independentModels = [
  Provider<DatabaseManager>(
    create: (context) => DatabaseManager(),
  ),
];

List<SingleChildWidget> dependentModels = [
  ProxyProvider<DatabaseManager, SpiritTreeRepository>(
    update: (_, db, rep) => SpiritTreeRepository(dbManager: db),
  ),
  ProxyProvider<DatabaseManager, StarRepository>(
    update: (_, db, rep) => StarRepository(dbManager: db),
  ),
];

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<SpiritTreeViewModel>(
    create: (context) => SpiritTreeViewModel(
      rep: context.read<SpiritTreeRepository>(),
    ),
  ),
  ChangeNotifierProvider<StarViewModel>(
    create: (context) => StarViewModel(
      rep: context.read<StarRepository>(),
    ),
  ),
];
