import 'package:architecture_example/features/recipes/provider/recipe_notifier_provider.dart';
import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recipeNotifier = RecipeNotifierProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          recipeNotifier.fetchRecipes();
        },
        child: const Icon(Icons.refresh),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: recipeNotifier.recipes.length,
          itemBuilder: (context, index) {
            final recipe = recipeNotifier.recipes[index];
            return ListTile(
              title: Text(recipe.title),
              leading: Image.network(recipe.imageUrl),
            );
          },
        ),
      ),
    );
  }
}
