import 'package:healthy_u/all_Imports.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(themeColor2),
            automaticallyImplyLeading: false,
            title: const Text('Appointment',style: TextStyle(color: Colors.black),),
            bottom: const TabBar(
                indicatorColor: Color(themeColor),
                labelColor: Color(themeColor),
                unselectedLabelColor: Colors.grey,
                tabs: <Tab>[
                  Tab(text: "Upcoming",),
                  Tab(text: "Confirmed",),
                  Tab(text: "Canceled",),
                ],
              ),
          ),
        body:  const TabBarView(
            children:[
              Text("upcoming"),
              Text("confirmed"),
              Text("cancled"),
            ]
        )
      ),
    );
  }
}