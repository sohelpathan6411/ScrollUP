import 'package:getx_docto_appointment/core/app_export.dart';
import 'package:getx_docto_appointment/presentation/booking_confirmed_screen/models/booking_confirmed_model.dart';

/// A controller class for the BookingConfirmedScreen.
///
/// This class manages the state of the BookingConfirmedScreen, including the
/// current bookingConfirmedModelObj
class BookingConfirmedController extends GetxController {
  Rx<BookingConfirmedModel> bookingConfirmedModelObj =
      BookingConfirmedModel().obs;
}
