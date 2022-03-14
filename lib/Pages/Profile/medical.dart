import 'package:healthy_u/all_Imports.dart';

class Medical extends StatelessWidget {
  const Medical({Key? key}) : super(key: key);

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
          // decoration: const BoxDecoration(
          //     color: Color(themeColor2)
          // ),
          child: Column(
            children: const [
              IconTextForm(iconName: Icon(Icons.coronavirus),name: "Allergies",),
              IconTextForm(iconName: Icon(Icons.medical_services),name: "Current Medications"),
              IconTextForm(iconName: Icon(Icons.medication_liquid),name: "Past Medication"),
              IconTextForm(iconName: Icon(Icons.add),name: "Chronic Diseases"),
              IconTextForm(iconName: Icon(Icons.personal_injury),name: "Injuries"),
              IconTextForm(iconName: Icon(Icons.cut),name: "Surgeries"),
            ],
          ),
        ),
      ),
    );

  }
}
