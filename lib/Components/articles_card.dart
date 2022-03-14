import 'package:healthy_u/all_Imports.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        height: 400,
        width: 300,
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Color(themeColor2),
              child: Text1(text: "Article 1", color: Colors.black, size: 20),
            )
          ],
        ),
      ),
    );
  }
}
