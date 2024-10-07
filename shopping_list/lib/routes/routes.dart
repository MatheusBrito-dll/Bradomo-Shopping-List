import 'package:get/get.dart';
import 'package:shopping_list/pages/home_screen.dart';
import 'package:shopping_list/pages/list_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home';
  static const String listScreen = '/list';

  // Método que retorna a lista de rotas como GetPage
  static List<GetPage> getPages() {
    return [
      GetPage(name: homeScreen, page: () => HomeScreen()),
      GetPage(name: listScreen, page: () => ListScreen()),
    ];
  }
}
