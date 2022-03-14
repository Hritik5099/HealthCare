import 'package:healthy_u/all_Imports.dart';

class GymEquipments extends StatelessWidget {
  const GymEquipments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,80),
        child: InsideTopBar(hint_text: " Gym Equipment ",),
      ),
        body: Center(child: Text("Health Equipment"))
    );
  }
}