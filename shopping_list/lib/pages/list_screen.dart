import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/ShoppingListController.dart';
import '../utils/colors_app.dart';
import '../widgets/decorationGradiente.dart';
import '../widgets/rectangle_button1.dart';
import '../widgets/textNunitoBold.dart';
import '../widgets/textNunitoLight.dart';
import 'add_item_form.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Inicializa o controller
    final ShoppingListController controller = Get.put(ShoppingListController());

    return Container(
      decoration: AppDecorations.gradientBoxDecoration(),
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.10),
          TextNunitolight(
            screenWidth: screenHeight,
            percentScreen: 0.03,
            msg: 'Total',
          ),
          SizedBox(height: screenHeight * 0.01),
          Obx(() => TextNunitoBold(
            screenWidth: screenHeight,
            percentScreen: 0.04,
            msg: 'R\$${controller.totalValue.toStringAsFixed(2)}',
          )),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RectangleButton1(
                  text: 'New Item',
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: ColorsApp.dark_primaryColor,
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (context) {
                        return AddItemForm(); // Chama o novo widget de formulário
                      },
                    );
                  },
                  icone: Icons.fastfood,
                  percentScreen: 0.04,
                  screenWidth: screenWidth,
                  textColor: ColorsApp.dark_textColor,
                  buttonColor: ColorsApp.dark_secundaryColor3,
                  iconColor: ColorsApp.icon_color_blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
