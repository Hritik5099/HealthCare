import 'package:healthy_u/Models/near_you.dart';
import 'package:healthy_u/all_Imports.dart';

class NearYouCard extends StatelessWidget {
  const NearYouCard({
    required this.nearYouItem,
    Key? key,
  }) : super(key: key);

  final NearYouItem nearYouItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed("${nearYouItem.pageRout}",arguments: "${nearYouItem.image}");
      },
      child: Column(
        children: [
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFBFDBD1)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("${nearYouItem.image}"),
            ),
          ),
          Text1(text: "${nearYouItem.title}",size: 15,color: Colors.black,)
        ],
      ),
    );
  }
}
