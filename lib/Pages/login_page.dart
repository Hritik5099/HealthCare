import 'package:healthy_u/all_Imports.dart';

import 'MobileView/mobile_view_landing_page.dart';

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget.isMobile(context)?const MobileView():const Text("data"),
    );
  }
}

