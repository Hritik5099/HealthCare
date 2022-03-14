import 'package:healthy_u/all_Imports.dart';

class Supplements extends StatelessWidget {
  const Supplements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,80),
        child: InsideTopBar(hint_text: " Supplements ",),
      ),
        body: Center(child: Text("Supplements"))
    );
  }
}