import 'package:healthy_u/all_Imports.dart';

class ChatHomePage extends StatelessWidget {
  const ChatHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(themeColor2),
        automaticallyImplyLeading: false,
        title: const Text('Healthy-U',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: (){Get.toNamed("/chatting");},
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (_,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                        children:const [
                          CircleAvatar(
                            backgroundColor: Color(themeColor2),
                          ),
                          SizedBox(width:10),
                          Text("Hritik"),
                          SizedBox(width:230),
                          Text("4:51"),
                        ]
                    ),
                    const Divider(color: Color(themeColor2),thickness: 1,)
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
