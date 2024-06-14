import 'dart:convert';

import 'package:architecture_example/features/recipes/domain/recipe_model.dart';
import 'package:architecture_example/features/recipes/domain/recipe_repository.dart';
import 'package:http/http.dart' as http;

class RecipeRepositoryImpl implements RecipeRepository {
  const RecipeRepositoryImpl();
  @override
  Future<List<RecipeModel>> fetchRecipes() async {
    final data = await http.get(Uri.parse('https://foodapi.dzolotov.tech/recipe'));
    print(data.body);
    final body = jsonDecode(data.body) as List<dynamic>;
    final recipes = body.map((e) {
      return RecipeModel(
        title: e['name'],
        imageUrl: e['photo'],
      );
    }).toList();
    return recipes;
  }
}
