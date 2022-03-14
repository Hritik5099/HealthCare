import 'package:healthy_u/all_Imports.dart';

class Ambulance extends StatelessWidget {
  const Ambulance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar:PreferredSize(
          preferredSize: Size(double.infinity,80),
          child: InsideTopBar(hint_text: " Ambulances ",),
        ),
        body: SingleChildScrollView(child: Center(child: Text("Ambulance")))
    );
  }
}