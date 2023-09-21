import '../controller/booking_confirmed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingConfirmedScreen.
///
/// This class ensures that the BookingConfirmedController is created when the
/// BookingConfirmedScreen is first loaded.
class BookingConfirmedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingConfirmedController());
  }
}
