import 'package:getx_docto_appointment/core/app_export.dart';
import 'package:getx_docto_appointment/presentation/my_bookings_screen/models/my_bookings_model.dart';

/// A controller class for the MyBookingsScreen.
///
/// This class manages the state of the MyBookingsScreen, including the
/// current myBookingsModelObj
class MyBookingsController extends GetxController {
  Rx<MyBookingsModel> myBookingsModelObj = MyBookingsModel().obs;
}
