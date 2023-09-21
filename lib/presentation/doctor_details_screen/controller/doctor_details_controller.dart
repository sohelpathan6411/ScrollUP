import 'package:getx_docto_appointment/core/app_export.dart';
import 'package:getx_docto_appointment/presentation/doctor_details_screen/models/doctor_details_model.dart';

/// A controller class for the DoctorDetailsScreen.
///
/// This class manages the state of the DoctorDetailsScreen, including the
/// current doctorDetailsModelObj
class DoctorDetailsController extends GetxController {
  Rx<DoctorDetailsModel> doctorDetailsModelObj = DoctorDetailsModel().obs;
}
