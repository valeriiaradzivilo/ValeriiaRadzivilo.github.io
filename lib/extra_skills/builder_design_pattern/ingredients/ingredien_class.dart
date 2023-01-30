import 'package:flutter/cupertino.dart';
abstract class IngredientClass {
  @protected
  List<String> ?allergens;
  @protected
  String ?name;
  @protected
  int ?price;


  String? getAllergens() {
    String answer="";
    allergens?.forEach((element) {answer+="$element ";});
    return answer;
  }

  String? getName()
  {
    return name;
  }

  int? getPrice()
  {
    return price;
  }


}
