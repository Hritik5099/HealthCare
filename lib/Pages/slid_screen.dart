import 'package:healthy_u/all_Imports.dart';

class SlidScreen extends StatelessWidget {
  const SlidScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(themeColor2),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.2,
              child: Image.asset("assets/doctorImage.png"),
            )
          ],
        ),
      ),
    );
  }
}
