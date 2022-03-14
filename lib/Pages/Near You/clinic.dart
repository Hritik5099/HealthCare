import 'package:healthy_u/all_Imports.dart';

class Clinic extends StatelessWidget {
  const Clinic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: const Color(themeColor2),
          leading: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios,
                color: Colors.black,
              )),
          title: const Text('Clinics',style: TextStyle(color: Colors.black),),
        ),
        body: Center(child: Text("clinic"))
    );
  }
}