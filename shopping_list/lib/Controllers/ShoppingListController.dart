import 'package:get/get.dart';

class ShoppingListController extends GetxController{
  var totalValue = 0.0.obs;

  void addItem(double value) {
    totalValue.value += value;
  }

  void removeItem(double value) {
    totalValue.value -= value;
  }

}