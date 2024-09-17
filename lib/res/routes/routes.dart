import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_statemanagement/res/routes/routes_name.dart';
import 'package:getx_statemanagement/view/Pagetwo.dart';
import 'package:getx_statemanagement/view/auth/Login_Api.dart';

class AppRoutes {
  static List<GetPage<dynamic>> appRoutes() {
    return [
      GetPage(
        name: RoutesName.PageTwo,
        transitionDuration: Duration(milliseconds: 250), // Changed to milliseconds
        page: () => LoginScreen(),
      ),
    ];
  }
}
