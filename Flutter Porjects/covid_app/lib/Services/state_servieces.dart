import 'package:covid_app/Model/world_state_Model.dart';
import 'package:covid_app/Services/Utilites/app_urls.dart';
import 'package:covid_app/View/world_states.dart';
import 'package:http/http.dart' as http;

class StateServices {
  Future<WorldModel> fetchWorldStatesRecorde() async {
    final response = http.get(Uri.parse(AppUrl.worldStatesApi));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return WorldStatesModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }
}
