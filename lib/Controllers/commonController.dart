import 'package:healthy_u/all_Imports.dart';

class LanguageController extends GetxController{
  void changeLanguage(var param1,var param2){
    var locale= Locale(param1,param2);
    Get.updateLocale(locale);
  }
}

class DropdownController extends GetxController {
  late String selectedValue;

  var language = <String>['English', 'Espanol'];

  void onSelected(String value) {
    selectedValue = value;
  }
}