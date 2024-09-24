import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:qastlay/utils/network/network.dart';

import '../features/shop/controllers/home_controller.dart';
import '../features/shop/controllers/product_controller.dart';
import '../features/shop/models/home_view_model.dart';
import '../navigation_menu.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
   Get.put(NetworkManager());
   // Get.lazyPut(()=> NavigationController());
   Get.lazyPut(()=> HomeViewModel());
   // Get.lazyPut(() => HomeViewModel());
   Get.put(HomeController());
  }
}
