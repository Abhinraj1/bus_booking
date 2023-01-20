import 'package:bus_booking/Screens/HomeScreen/homeScreen.dart';
import 'package:bus_booking/screens/busListScreen/busListScreen.dart';
import 'package:bus_booking/screens/finalScreen.dart';
import 'package:bus_booking/screens/selectBusSeat/selectBusSeatScreen.dart';
import 'package:bus_booking/screens/splashScreen/splashScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';



/// Named routes
List<GetPage<dynamic>> routes = [

  GetPage(name: "/",
    page: ()=> const SplashScreen(),
    transition: Transition.leftToRightWithFade
  ),
  GetPage(name: "/home",
    page: ()=> const HomeScreen(),
  ),
  GetPage(name: "/selectBusSeatScreen",
    page: ()=> const SelectBusSeatScreen(),
  ),
  GetPage(name: "/busListScreen",
    page: ()=> const BusListScreen(),
  ),
  GetPage(name: "/finalScreen",
    page: ()=> const FinalScreen(),
  ),
];