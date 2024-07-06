import 'package:get_it/get_it.dart';
import 'package:newstore/core/cache/cache_helper.dart';

final locator = GetIt.instance;

Future<void> setUpLocatore() async{
  locator.registerSingleton<CacheHelper>(CacheHelper());
}
