import 'package:healthy_u/Components/articles_card.dart';
import 'package:healthy_u/Controllers/commonController.dart';
import 'package:healthy_u/Models/near_you.dart';
import 'package:healthy_u/Models/services.dart';
import 'package:healthy_u/all_Imports.dart';

import '../Components/near_you_card.dart';
import '../Components/service_provided_card.dart';




class PatientHomePage extends StatelessWidget {
  const PatientHomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    LanguageController myController =Get.put(LanguageController());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,140),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              const SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: (){},
                          child: const Icon(Icons.location_on,color: Color(themeColor),),
                        ),
                      ),
                      Text1(text: "Home".tr, size: 15,color: const Color(themeColor),),
                    ],
                  ),

                  GestureDetector(
                    onTap: (){
                      myController.changeLanguage("hi", "IN");
                    },
                    child: const Icon(Icons.g_translate,color: Color(themeColor)),
                  ),
                ],
              ),
              const Text("Preet Nagar Malout,Malout 152107,Punjab ",maxLines: 1,),
              const SizedBox(height: 12,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey,width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(15),
                    )
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: " Doctor or Hospitals or Clinics",
                    prefixIcon: GestureDetector(onTap:(){},child: const Icon(Icons.search,color: Color(themeColor),)),
                    hintStyle: TextStyle(color:Colors.black54,fontSize: ResponsiveWidget.isDesktop(context)?20:ResponsiveWidget.isTablet(context)?15:0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: bottomNavigationBar,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AddsBanner(),
              const SizedBox(height: 10,),
              Text1(text: "Near You".tr, color: Colors.black, size: 20),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children:List.generate(demo_NearYou.length, (index) =>  Padding(
                      padding: const EdgeInsets.all(8),
                      child: NearYouCard(nearYouItem: demo_NearYou[index],),
                    ),
                    )),
              ),
              //const SizedBox(height: 15,),
              Text1(text: "Services we provide".tr, color: Colors.black, size: 20),
              const SizedBox(height: 15,),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: demo_Services.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  //childAspectRatio: childAspectRatio,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (context,index)=> ServicesProvidedCard(serviceItems: demo_Services[index],),
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.vertical,
              //   child: Column(
              //       children:List.generate(demo_Services.length, (index) =>  Padding(
              //         padding: const EdgeInsets.all(8),
              //         child: ServicesProvidedCard(serviceItems: demo_Services[index],),
              //       ),
              //       )),
              // ),
              const SizedBox(height: 10,),
              // Text1(text: "Read the articles", color: Colors.black, size: 20),
              // const SizedBox(height: 10,),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //       children:List.generate(4, (index) => const Padding(
              //         padding: EdgeInsets.all(8),
              //         child: Articles(),
              //       ),
              //       )),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}






