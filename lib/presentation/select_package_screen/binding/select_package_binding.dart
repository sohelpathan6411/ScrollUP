import '../controller/select_package_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectPackageScreen.
///
/// This class ensures that the SelectPackageController is created when the
/// SelectPackageScreen is first loaded.
class SelectPackageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectPackageController());
  }
}
