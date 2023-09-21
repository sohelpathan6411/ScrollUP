import 'package:getx_docto_appointment/core/app_export.dart';
import 'package:getx_docto_appointment/presentation/review_booking_screen/models/review_booking_model.dart';

/// A controller class for the ReviewBookingScreen.
///
/// This class manages the state of the ReviewBookingScreen, including the
/// current reviewBookingModelObj
class ReviewBookingController extends GetxController {
  Rx<ReviewBookingModel> reviewBookingModelObj = ReviewBookingModel().obs;
}
