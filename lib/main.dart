import 'package:flutter/cupertino.dart';
import 'package:rest_api_practice/application.dart';
import 'package:rest_api_practice/service/recipe_remote_service.dart';

void main()async{

  final service = RecipeRemoteService();
  service.getUser();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Application());
}