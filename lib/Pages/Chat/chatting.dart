import 'package:healthy_u/all_Imports.dart';



class Chatting extends StatelessWidget {
  const Chatting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(themeColor2),
        leadingWidth: 30,
        leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: const Icon(Icons.arrow_back,
              color: Colors.black,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(radius: 20,backgroundColor: Colors.grey,),
                Text1(text: "Hritik", color: Colors.black, size: 20),
              ],
            ),
             Row(
               children: const [
                 Icon(Icons.videocam_sharp,size: 25,color: Colors.black,),
                 Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Icon(Icons.call,size: 25,color: Colors.black,),
                 ),
                 Icon(Icons.more_vert,size: 25,color: Colors.black,)
               ],
             )
          ],
        ),
      ),
      body: Text("Chatting"),
    );
  }
}
