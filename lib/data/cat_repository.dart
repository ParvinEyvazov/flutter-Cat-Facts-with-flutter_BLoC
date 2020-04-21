import 'package:cat_facts_app/data/car_api_client.dart';
import 'package:cat_facts_app/locator.dart';
import 'package:cat_facts_app/models/cat.dart';

class CatRepository {
  CatApiClient catApiClient = locator<CatApiClient>();

  Future<Cat> getCat() async {


    return await catApiClient.getFacts();

  }
}
