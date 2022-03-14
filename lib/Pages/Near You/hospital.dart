import 'package:healthy_u/all_Imports.dart';

import '../../Components/hospital_card.dart';

class Hospital extends StatelessWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:PreferredSize(
          preferredSize: const Size(double.infinity,80),
          child: Container(
            decoration: const BoxDecoration(
                color: Color(themeColor2)
            ),
            child: const InsideTopBar(hint_text: " Hospital ",),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){},
                child: Card(
                  elevation: 4,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 15,
                            child: Icon(Icons.question_mark_rounded,size: 20,color: Colors.white,),
                          ),
                          Text1(text: "Learn how to connect to a hospital", color: Colors.black, size: 13),
                          const Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(10.0),
                child: AddsBanner(image: "${Get.arguments}",),
              ),
              Row(
                children: [
                  Text1(text: "Hospitals Near You", color: Colors.black, size: 20),
                ],
              ),
              HospitalCard(),
            ],
          ),
        )
    );
  }
}