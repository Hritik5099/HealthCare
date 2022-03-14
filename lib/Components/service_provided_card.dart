import 'package:healthy_u/Models/services.dart';
import 'package:healthy_u/all_Imports.dart';

class ServicesProvidedCard extends StatelessWidget {
  const ServicesProvidedCard({
    required this. serviceItems,
    Key? key,
  }) : super(key: key);

  final ServiceItems serviceItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Get.toNamed("${serviceItems.pageRout}");
          },
          child: Container(
            height: 115,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFBFDBD1)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("${serviceItems.image}"),
            ),
          ),
        ),
        Text1(text: "${serviceItems.title}",size: 15,color: Colors.black,)
      ],
    );
  }
}