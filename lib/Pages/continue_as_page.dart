import 'package:healthy_u/all_Imports.dart';

class ContinueAsPage extends StatelessWidget {
  const ContinueAsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(themeColor2),
      // appBar: AppBar(
      //   leading: GestureDetector(
      //     onTap: (){},
      //     child: const Icon(Icons.arrow_back_ios),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_back),
                    )
                  ],
                ),
              ),
              Image.asset("assets/doctor2.png",height: 300,),
              const DividerText(text: "Continue as"),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(themeColor),
                    border: Border.all(color: Colors.grey,width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10),
                  ),),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.add_chart,color: Colors.white),
                            ),
                            Text("Doctor",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Get.toNamed("/homePage");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(themeColor),
                    border: Border.all(color: Colors.grey,width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(10),
                    ),),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.account_circle_outlined,color: Colors.white),
                            ),
                            Text("Patients",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("By continuing, you agree to our"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: const Text("Terms of service ",style:TextStyle(color: Color(themeColor),fontWeight: FontWeight.bold)),
                      ),
                      const Text("&"),
                      GestureDetector(
                        onTap: (){},
                        child: const Text(" Privacy Policy ",style:TextStyle(color: Color(themeColor),fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
