import 'recipe_model.dart';

abstract interface class RecipeRepository {
  Future<List<RecipeModel>> fetchRecipes();
}
