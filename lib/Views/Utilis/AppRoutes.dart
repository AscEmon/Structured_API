import 'package:get/get.dart';
import 'package:structured_api/Views/Screens/Homepage.dart';
import 'package:structured_api/Views/Screens/Loginpage.dart';

class AppRoutes {
  static String INITIAL = "/";
  static String HOMEPAGE = "HomePage";

  static List<GetPage> AppRoutesList() {
    return [
      GetPage(name: INITIAL, page: () => LoginPage()),
      GetPage(name: HOMEPAGE, page: () => HomePage()),
    ];
  }
}
