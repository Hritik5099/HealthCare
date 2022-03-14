
import 'package:healthy_u/all_Imports.dart';

class OurStore extends StatelessWidget {
  const OurStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity,100),
          child: AppBar(
            bottom: const TabBar(
              indicatorColor: Color(themeColor),
              labelColor: Color(themeColor),
              unselectedLabelColor: Colors.grey,
              tabs: <Tab>[
                Tab(text: "Medicines",),
                Tab(text: "Supplements",),
                Tab(text: "Health Equipments",),
              ],
            ),
            backgroundColor: Colors.white,
            leading: const Icon(Icons.health_and_safety_rounded,color: Color(themeColor),size: 50,),
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey,width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(15),
                  )
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: " Medicines or Supplements or Health Equip..",
                  prefixIcon: GestureDetector(onTap:(){},child: const Icon(Icons.search,color: Color(themeColor),)),
                  hintStyle: TextStyle(color:Colors.black54,fontSize: ResponsiveWidget.isDesktop(context)?20:ResponsiveWidget.isTablet(context)?15:0),
                ),
              ),
            ),
          ),
        ),
          body: const TabBarView(
              children:[
              ]
          )
      ),
    );
  }
}