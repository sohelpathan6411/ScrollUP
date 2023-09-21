import 'package:getx_docto_appointment/presentation/doctor_details_screen/doctor_details_screen.dart';
import 'package:getx_docto_appointment/presentation/doctor_details_screen/binding/doctor_details_binding.dart';
import 'package:getx_docto_appointment/presentation/my_bookings_screen/my_bookings_screen.dart';
import 'package:getx_docto_appointment/presentation/my_bookings_screen/binding/my_bookings_binding.dart';
import 'package:getx_docto_appointment/presentation/select_package_screen/select_package_screen.dart';
import 'package:getx_docto_appointment/presentation/select_package_screen/binding/select_package_binding.dart';
import 'package:getx_docto_appointment/presentation/review_booking_screen/review_booking_screen.dart';
import 'package:getx_docto_appointment/presentation/review_booking_screen/binding/review_booking_binding.dart';
import 'package:getx_docto_appointment/presentation/booking_confirmed_screen/booking_confirmed_screen.dart';
import 'package:getx_docto_appointment/presentation/booking_confirmed_screen/binding/booking_confirmed_binding.dart';
import 'package:getx_docto_appointment/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:getx_docto_appointment/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String doctorDetailsScreen = '/doctor_details_screen';

  static const String myBookingsScreen = '/my_bookings_screen';

  static const String selectPackageScreen = '/select_package_screen';

  static const String reviewBookingScreen = '/review_booking_screen';

  static const String bookingConfirmedScreen = '/booking_confirmed_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: doctorDetailsScreen,
      page: () => DoctorDetailsScreen(),
      bindings: [
        DoctorDetailsBinding(),
      ],
    ),
    GetPage(
      name: myBookingsScreen,
      page: () => MyBookingsScreen(),
      bindings: [
        MyBookingsBinding(),
      ],
    ),
    GetPage(
      name: selectPackageScreen,
      page: () => SelectPackageScreen(),
      bindings: [
        SelectPackageBinding(),
      ],
    ),
    GetPage(
      name: reviewBookingScreen,
      page: () => ReviewBookingScreen(),
      bindings: [
        ReviewBookingBinding(),
      ],
    ),
    GetPage(
      name: bookingConfirmedScreen,
      page: () => BookingConfirmedScreen(),
      bindings: [
        BookingConfirmedBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => DoctorDetailsScreen(),
      bindings: [
        DoctorDetailsBinding(),
      ],
    )
  ];
}
