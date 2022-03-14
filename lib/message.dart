import 'package:get/get.dart';

class Message extends Translations{
  @override
  Map<String,Map<String,String>>get keys=>{
    "en_US":{
      "Home":"Home",
      "Near You":"Near you",
      "Services we provide":"Services we provide",
      "Doctor":"Doctor",
    },
    "hi_IN":{
      "Home":"घर",
      "Near You":"आप के पास",
      "Services we provide":"सेवाएं हम प्रदान करते हैं",
      "Doctor":"चिकित्सक",
    }
  };
}