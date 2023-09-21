import '../controller/my_bookings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyBookingsScreen.
///
/// This class ensures that the MyBookingsController is created when the
/// MyBookingsScreen is first loaded.
class MyBookingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyBookingsController());
  }
}
