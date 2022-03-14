
import 'package:healthy_u/Pages/Profile/profile.dart';
import 'package:healthy_u/all_Imports.dart';
import '../Appointment/appointment.dart';
import '../Chat/chat_home_page.dart';
import '../MobileView/bottom_navigation_bar.dart';
import '../Reports/reports.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int _currentIndex = 0;

    final _inactiveColor = Colors.grey;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: getBody(),
          floatingActionButton: GestureDetector(
            onTap: (){},
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: Color(themeColor),
              child: Icon(Icons.support_agent,color: Colors.white,),
            ),
          ),
          bottomNavigationBar: _buildBottomBar()
      );
  }
    Widget _buildBottomBar(){
      return CustomAnimatedBottomBar(
        containerHeight: 70,
        backgroundColor: Colors.white,
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.green,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.chat),
            title: const Text('Chat'),
            activeColor: Colors.green,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.book),
            title: const Text('Appointment'),
            activeColor: Colors.green,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.file_copy_sharp),
            title: const Text('Reports'),
            activeColor: Colors.green,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.people),
            title: const Text('Profile'),
            activeColor: Colors.green,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
        ],
      );
    }


    Widget getBody() {
      List<Widget> pages = [
        const PatientHomePage(),
        const ChatHomePage(),
        const Appointment(),
        const Report(),
        const Profile(),
      ];
      return IndexedStack(
        index: _currentIndex,
        children: pages,
      );
    }
}



