
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_u/Pages/Profile/setting.dart';
import 'package:healthy_u/Pages/Profile/medical.dart';
import 'package:healthy_u/Pages/Profile/personal.dart';
import 'package:healthy_u/all_Imports.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(themeColor2),
        title: Text1(text: "Profile", color: Colors.black, size: 25),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Column(
              children: [
                Text1(text: "Log out", color: const Color(themeColor), size: 20),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:  [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Text1(text: "Change Profile Image", color: const Color(themeColor), size: 15),
                      )
                    ],
                  ),
                ),
              ),
              Text("Hritik Ranjan Nanda",style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.026)),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/gmail.png",width: MediaQuery.of(context).size.width*0.04,height: MediaQuery.of(context).size.height*0.04,),
                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                  Text("hritiknanda5099@gmail.com",style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.020)),
                ],
              ),
              // Row(
              //   children: [
              //     Text1(text: "Your Profiles", color: const Color(themeColor), size: 20)
              //   ],
              // ),
              ListTile(
                title: Text("Personal Profile",style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.02),),
                subtitle: Text("It has personal details of your",style: GoogleFonts.cormorantGaramond(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.017),),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  Get.toNamed("/personalProfile")!;
                },
              ),
              ListTile(
              title: Text("Medical Profile",style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.02),),
              subtitle: Text("It has medical details of your",style: GoogleFonts.cormorantGaramond(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.017),),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){
                Get.toNamed("/medicalProfile")!;
              },
              ),
              // Row(
              //   children: [
              //     Text1(text: "Others", color: const Color(themeColor), size: 20)
              //   ],
              // ),
              ListTile(
                title: Text("Share",style: GoogleFonts.robotoSlab(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.02),),
                subtitle: Text("Share the Healthy-U app",style: GoogleFonts.cormorantGaramond(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.017),),
                trailing: Icon(Icons.share),
                onTap: (){},
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("From:",
                        style: GoogleFonts.cormorantGaramond(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height*0.023
                        ),),
                      Text("Team Healthy-U",
                        style: GoogleFonts.cormorantGaramond(
                          color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.height*0.023
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}