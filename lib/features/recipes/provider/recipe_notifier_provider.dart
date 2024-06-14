import 'package:architecture_example/features/recipes/logic/recipe_notifier.dart';
import 'package:flutter/material.dart';

class RecipeNotifierProvider extends InheritedNotifier<RecipeNotifier> {
  const RecipeNotifierProvider({super.key, required super.child, required super.notifier});

  static RecipeNotifier of(BuildContext context) {
    final notifier = context.dependOnInheritedWidgetOfExactType<RecipeNotifierProvider>()!.notifier;
    return notifier!;
  }
}
