


import 'package:healthy_u/Pages/Chat/chat_home_page.dart';
import 'package:healthy_u/Pages/Chat/chatting.dart';
import 'package:healthy_u/Pages/Home/home.dart';
import 'package:healthy_u/Pages/Near%20You/ambulance.dart';
import 'package:healthy_u/Pages/Near%20You/clinic.dart';
import 'package:healthy_u/Pages/Near%20You/doctor.dart';
import 'package:healthy_u/Pages/Near%20You/hospital.dart';
import 'package:healthy_u/Pages/Profile/medical.dart';
import 'package:healthy_u/Pages/Profile/personal.dart';
import 'package:healthy_u/Pages/slid_screen.dart';

import 'Pages/Services/diet.dart';
import 'Pages/Services/gym_equipments.dart';
import 'Pages/Services/lab_test.dart';
import 'Pages/Services/medicine.dart';
import 'Pages/Services/supplements.dart';
import 'Pages/login_page.dart';
import 'Pages/splash_screen_page.dart';
import 'Utils/theme.dart';
import 'package:healthy_u/all_Imports.dart';

import 'message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Message(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("en","US"),
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      initialRoute: '/start',
        getPages: [
          GetPage(name: '/start', page:()=>const SplashScreen()),
          GetPage(name: '/slidScreen', page:()=>const SlidScreen()),
          GetPage(name: '/loginPage', page:()=>LoginPage()),
          GetPage(name: '/newAccount', page:()=>const NewAccountPage()),
          GetPage(name: "/continueAsPage", page: ()=>const ContinueAsPage()),
          GetPage(name: "/homePage", page: ()=>const Home()),
          GetPage(name: "/chatHomePage", page: ()=>const ChatHomePage()),
          GetPage(name: "/chatting", page: ()=>const Chatting()),
          GetPage(name: "/medicine", page: ()=>const Medicines()),
          GetPage(name: "/supplements", page: ()=>const Supplements()),
          GetPage(name: "/gymEquipments", page: ()=>const GymEquipments()),
          GetPage(name: "/diet", page: ()=>const Diet()),
          GetPage(name: "/labTest", page: ()=>const LabTest()),
          GetPage(name: "/doctor", page: ()=>const Doctor()),
          GetPage(name: "/clinic", page: ()=>const Clinic()),
          GetPage(name: "/hospital", page: ()=>const Hospital()),
          GetPage(name: "/ambulance", page: ()=>const Ambulance()),
          GetPage(name: "/medicalProfile", page: ()=>const Medical()),
          GetPage(name: "/personalProfile", page: ()=>const Personal()),
        ],

    );
  }
}




