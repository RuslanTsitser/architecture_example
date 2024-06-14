import 'package:architecture_example/features/recipes/domain/recipe_model.dart';
import 'package:architecture_example/features/recipes/domain/recipe_repository.dart';
import 'package:flutter/material.dart';

class RecipeNotifier with ChangeNotifier {
  final RecipeRepository _recipeRepository;
  RecipeNotifier(this._recipeRepository);

  List<RecipeModel> recipes = [];

  Future<void> fetchRecipes() async {
    recipes = await _recipeRepository.fetchRecipes();
    notifyListeners();
  }
}
