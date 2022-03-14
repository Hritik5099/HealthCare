import 'package:healthy_u/all_Imports.dart';

class LabTest extends StatelessWidget {
  const LabTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,80),
        child: InsideTopBar(hint_text: " Laboratory ",),
      ),
        body: Center(child: Text("Lab Test"))
    );
  }
}