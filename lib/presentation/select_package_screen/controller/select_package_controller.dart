import 'package:getx_docto_appointment/core/app_export.dart';
import 'package:getx_docto_appointment/presentation/select_package_screen/models/select_package_model.dart';

/// A controller class for the SelectPackageScreen.
///
/// This class manages the state of the SelectPackageScreen, including the
/// current selectPackageModelObj
class SelectPackageController extends GetxController {
  Rx<SelectPackageModel> selectPackageModelObj = SelectPackageModel().obs;
}
