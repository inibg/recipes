import 'dart:convert';

class Meal {
  final String idMeal;
  final String strMeal;
  final String? strDrinkAlternate;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String? strTags;
  final String strYoutube;
  final List<String> strIngredients;
  final List<String> strMeasures;
  final String? strSource;
  final String? strImageSource;
  final String? strCreativeCommonsConfirmed;
  final String? dateModified;

  Meal({
    required this.idMeal,
    required this.strMeal,
    this.strDrinkAlternate,
    required this.strCategory,
    required this.strArea,
    required this.strInstructions,
    required this.strMealThumb,
    this.strTags,
    required this.strYoutube,
    required this.strIngredients,
    required this.strMeasures,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  factory Meal.fromJson(Map<String, dynamic> json) {
    List<String> ingredients = [];
    List<String> measures = [];
    for (int i = 1; i <= 20; i++) {
      if (json['strIngredient$i'] != null && json['strIngredient$i'] != '') {
        ingredients.add(json['strIngredient$i']);
      }
      if (json['strMeasure$i'] != null && json['strMeasure$i'] != '') {
        measures.add(json['strMeasure$i']);
      }
    }
    return Meal(
      idMeal: json['idMeal'],
      strMeal: json['strMeal'],
      strDrinkAlternate: json['strDrinkAlternate'],
      strCategory: json['strCategory'],
      strArea: json['strArea'],
      strInstructions: json['strInstructions'],
      strMealThumb: json['strMealThumb'],
      strTags: json['strTags'],
      strYoutube: json['strYoutube'],
      strIngredients: ingredients,
      strMeasures: measures,
      strSource: json['strSource'],
      strImageSource: json['strImageSource'],
      strCreativeCommonsConfirmed: json['strCreativeCommonsConfirmed'],
      dateModified: json['dateModified'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['idMeal'] = idMeal;
    data['strMeal'] = strMeal;
    data['strDrinkAlternate'] = strDrinkAlternate;
    data['strCategory'] = strCategory;
    data['strArea'] = strArea;
    data['strInstructions'] = strInstructions;
    data['strMealThumb'] = strMealThumb;
    data['strTags'] = strTags;
    data['strYoutube'] = strYoutube;
    for (int i = 0; i < strIngredients.length; i++) {
      data['strIngredient${i + 1}'] = strIngredients[i];
      data['strMeasure${i + 1}'] = strMeasures[i];
    }
    data['strSource'] = strSource;
    data['strImageSource'] = strImageSource;
    data['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    data['dateModified'] = dateModified;
    return data;
  }

  @override
  String toString() {
    return 'Meal{idMeal: $idMeal, strMeal: $strMeal, strDrinkAlternate: $strDrinkAlternate, strCategory: $strCategory, strArea: $strArea, strInstructions: $strInstructions, strMealThumb: $strMealThumb, strTags: $strTags, strYoutube: $strYoutube, strIngredients: $strIngredients, strMeasures: $strMeasures, strSource: $strSource, strImageSource: $strImageSource, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified}';
  }

  static List<Meal> fromJsonList(String response) {
    List<dynamic> list = jsonDecode(response);
    return list.map((item) => Meal.fromJson(item)).toList();
  }
}
