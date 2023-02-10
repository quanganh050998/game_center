import 'package:game_center/di/module/local_data_modul.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async {
  $initGetIt(getIt);
  await LocalDB.initLocalDB();
}
