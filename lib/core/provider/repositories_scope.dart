import 'package:architecture_example/features/recipes/data/recipe_repository_impl.dart';
import 'package:architecture_example/features/recipes/domain/recipe_repository.dart';
import 'package:flutter/material.dart';

class RepositoriesScope extends InheritedWidget {
  const RepositoriesScope({super.key, required super.child});
  final RecipeRepository recipeRepository = const RecipeRepositoryImpl();

  static RepositoriesScope of(BuildContext context) {
    final scope = context.getInheritedWidgetOfExactType<RepositoriesScope>();
    return scope!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
