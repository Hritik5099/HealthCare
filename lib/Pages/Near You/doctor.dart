import 'package:healthy_u/Components/doctor_card.dart';
import 'package:healthy_u/all_Imports.dart';

class Doctor extends StatelessWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity,80),
          child: InsideTopBar(hint_text: " Doctor ",),
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
                          Text1(text: "Learn how to book an appointment", color: Colors.black, size: 13),
                          const Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    AddsBanner(image: "${Get.arguments}",),
                    const SizedBox(height: 30,),
                    // Row(
                    //   children: [
                    //     Text1(text: "Specialities Near You", color: Colors.black, size: 20),
                    //   ],
                    // ),
                    const DoctorCard(),
                  ],
                ),
              )

            ],
          ),
        )
    );
  }
}

