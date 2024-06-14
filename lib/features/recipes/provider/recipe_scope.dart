import 'package:architecture_example/core/provider/repositories_scope.dart';
import 'package:architecture_example/features/recipes/logic/recipe_notifier.dart';
import 'package:architecture_example/features/recipes/provider/recipe_notifier_provider.dart';
import 'package:flutter/material.dart';

class RecipeScope extends StatefulWidget {
  const RecipeScope({super.key, required this.child});
  final Widget child;

  @override
  State<RecipeScope> createState() => _RecipeScopeState();
}

class _RecipeScopeState extends State<RecipeScope> {
  late final recipeNotifier = RecipeNotifier(
    RepositoriesScope.of(context).recipeRepository,
  );

  @override
  void dispose() {
    recipeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RecipeNotifierProvider(
      notifier: recipeNotifier,
      child: widget.child,
    );
  }
}
