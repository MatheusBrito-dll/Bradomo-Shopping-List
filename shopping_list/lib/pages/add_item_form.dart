import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import '../Controllers/ShoppingListController.dart';
import '../utils/colors_app.dart';

class AddItemForm extends StatelessWidget {
  final ShoppingListController controller = Get.find();
  final TextEditingController itemNameController = TextEditingController();
  final MoneyMaskedTextController itemPriceController = MoneyMaskedTextController(
    decimalSeparator: ',',
    thousandSeparator: '.',
  );

  @override
  Widget build(BuildContext context) {
    // Obter a largura e altura da tela
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define tamanhos baseados no tamanho da tela
    double fontSize = screenWidth * 0.05;
    double padding = screenWidth * 0.04;

    // Borda personalizada para todos os estados
    OutlineInputBorder customBorder = OutlineInputBorder(
      borderSide: BorderSide(color: ColorsApp.dark_secundaryColor4),
    );

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add a new item',
              style: TextStyle(
                color: ColorsApp.dark_textColor,
                fontSize: fontSize,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            TextField(
              controller: itemNameController,
              cursorColor: ColorsApp.dark_textColor, // Define a cor do cursor
              style: TextStyle(
                fontSize: fontSize * 0.8,
                color: ColorsApp.dark_textColor, // Cor do texto digitado
              ),
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: ColorsApp.dark_textColor), // Cor do rótulo
                border: customBorder,
                focusedBorder: customBorder,
                enabledBorder: customBorder,
                contentPadding: EdgeInsets.symmetric(
                  vertical: padding,
                  horizontal: padding,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            TextField(
              controller: itemPriceController,
              keyboardType: TextInputType.number,
              cursorColor: ColorsApp.dark_textColor, // Define a cor do cursor
              style: TextStyle(
                fontSize: fontSize * 0.8,
                color: ColorsApp.dark_textColor, // Cor do texto digitado
              ),
              decoration: InputDecoration(
                labelText: 'Price',
                labelStyle: TextStyle(color: ColorsApp.dark_textColor), // Cor do rótulo
                border: customBorder,
                focusedBorder: customBorder,
                enabledBorder: customBorder,
                contentPadding: EdgeInsets.symmetric(
                  vertical: padding,
                  horizontal: padding,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsApp.dark_secundaryColor4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  String itemName = itemNameController.text;
                  double itemPrice = itemPriceController.numberValue;

                  if (itemName.isNotEmpty && itemPrice > 0) {
                    controller.addItem(itemPrice);
                    itemNameController.clear();
                    itemPriceController.updateValue(0.0);
                    Navigator.of(context).pop();
                  } else {
                    Get.snackbar(
                      'Ops...',
                      'Please fill in all fields correctly.',
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: ColorsApp.dark_textColor,
                    );
                  }
                },
                child: Text(
                  'Ok',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w100,
                    color: ColorsApp.dark_textColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.08),
          ],
        ),
      ),
    );
  }
}
