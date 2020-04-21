import 'package:cat_facts_app/data/car_api_client.dart';
import 'package:cat_facts_app/data/cat_repository.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator(){

  //When program starts , it gonna create them , not just in use
  locator.registerLazySingleton(() => CatRepository());
  locator.registerLazySingleton(() => CatApiClient());


}