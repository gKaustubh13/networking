import 'dart:convert';

class RecipeResponseModel {
  RecipeResponseModel({
    required this.id,
    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.prepTimeMinutes,
    required this.cookTimeMinutes,
    required this.servings,
    required this.difficulty,
    required this.cuisine,
    required this.caloriesPerServing,
    required this.tags,
    required this.userId,
    required this.image,
    required this.rating,
    required this.reviewCount,
    required this.mealType,
  });

  factory RecipeResponseModel.fromJsonString(String jsonString){
    final Map<String, dynamic> map = json.decode(jsonString);
    return RecipeResponseModel.fromMap(map);
  }

  factory RecipeResponseModel.fromMap(Map<String, dynamic> map) {
    return RecipeResponseModel(
      id: map["id"] as int,
      name: map["name"] as String,
      ingredients: (map["ingredients"] as List).map((e) => e.toString()).toList(),
      instructions: (map["instructions"] as List).map((e) => e.toString()).toList(),
      prepTimeMinutes: map["prepTimeMinutes"] as int,
      cookTimeMinutes: map["cookTimeMinutes"] as int,
      servings: map["servings"] as int,
      difficulty: map["difficulty"] as String,
      cuisine: map["cuisine"] as String,
      caloriesPerServing: map["caloriesPerServing"] as int,
      tags: (map["tags"] as List).map((e) => e.toString()).toList(),
      userId: map["userId"] as int,
      image: map["image"] as String,
      rating: double.parse(map["rating"].toString()),
      reviewCount: map["reviewCount"] as int,
      mealType: (map["mealType"] as List).map((e) => e.toString()).toList(),
    );
  }

  final int id;
  final String name;
  final List<String> ingredients;
  final List<String> instructions;
  final int prepTimeMinutes;
  final int cookTimeMinutes;
  final int servings;
  final String difficulty;
  final String cuisine;
  final int caloriesPerServing;
  final List<String> tags;
  final int userId;
  final String image;
  final double rating;
  final int reviewCount;
  final List<String> mealType;
}



// {
//   "id": 1,
//   "name": "Classic Margherita Pizza",
//   "ingredients": [
//     "Pizza dough",
//     "Tomato sauce",
//     "Fresh mozzarella cheese",
//     "Fresh basil leaves",
//     "Olive oil",
//     "Salt and pepper to taste"
//   ],
//   "instructions": [
//     "Preheat the oven to 475°F (245°C).",
//     "Roll out the pizza dough and spread tomato sauce evenly.",
//     "Top with slices of fresh mozzarella and fresh basil leaves.",
//     "Drizzle with olive oil and season with salt and pepper.",
//     "Bake in the preheated oven for 12-15 minutes or until the crust is golden brown.",
//     "Slice and serve hot."
//   ],
//   "prepTimeMinutes": 20,
//   "cookTimeMinutes": 15,
//   "servings": 4,
//   "difficulty": "Easy",
//   "cuisine": "Italian",
//   "caloriesPerServing": 300,
//   "tags": [
//     "Pizza",
//     "Italian"
//   ],
//   "userId": 166,
//   "image": "https://cdn.dummyjson.com/recipe-images/1.webp",
//   "rating": 4.6,
//   "reviewCount": 98,
//   "mealType": [
//     "Dinner"
//   ]
// }