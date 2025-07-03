import 'package:http/http.dart';
import 'package:rest_api_practice/model/recipe_response_model.dart';

class RecipeRemoteService {
  final _client = Client();
  
  void getUser() async {
    final url = "https://dummyjson.com/recipes/1";
    final response = await _client.get(Uri.parse(url));
    if(response.statusCode == 200){
      print("Success");
      final jsonString = response.body;
      final recipeResponseModel = RecipeResponseModel.fromJsonString(jsonString);
      print(recipeResponseModel.ingredients);
      return;
      
    }
    print("Failed");
  }
}
