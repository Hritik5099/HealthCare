import 'package:healthy_u/all_Imports.dart';

class Medicines extends StatelessWidget {
  const Medicines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity,80),
        child: Container(
          decoration: const BoxDecoration(
              color: Color(themeColor2)
          ),
          child: const InsideTopBar(hint_text: " Medicine ",),
        ),
      ),
        body: const Center(child:  Text("Medicines"))
    );
  }
}