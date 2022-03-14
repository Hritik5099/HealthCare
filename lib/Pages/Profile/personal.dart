import 'package:healthy_u/all_Imports.dart';

class Personal extends StatelessWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
          Get.back();
        },),
        title: Text1(text: "Personal Profile", color: Colors.black, size: 20),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: const [
              IconTextForm(iconName: Icon(Icons.phone),name: "Mobile Number",),
              IconTextForm(iconName: Icon(Icons.male),name: "Gender"),
              IconTextForm(iconName: Icon(Icons.bloodtype),name: "Blood Group"),
              IconTextForm(iconName: Icon(Icons.height),name: "Height"),
              IconTextForm(iconName: Icon(Icons.monitor_weight_rounded),name: "Weight"),
              IconTextForm(iconName: Icon(Icons.phone_forwarded),name: "Emergency Contact"),
              IconTextForm(iconName: Icon(Icons.height),name: "Height"),
              IconTextForm(iconName: Icon(Icons.location_on),name: "Location"),
            ],
          ),
        ),
      ),
    );

  }
}


