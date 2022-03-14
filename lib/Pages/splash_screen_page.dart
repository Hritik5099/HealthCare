import 'package:healthy_u/all_Imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool isLoading=true;

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(const Duration(seconds: 10),(){});
    Get.toNamed("/newAccount");
    setState(() {
      isLoading=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(themeColor2),
      //backgroundColor: Colors.white,
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.26,),
               SizedBox(
                height: 150,
                  width: 150,
                  child: Image.asset("assets/logo1.png")),
              const SizedBox(height: 10,),
              Text("HEALTHY-U",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    //color: const Color(0xff0072bc),
                    color: Color(0xff36a03d),
                    fontSize: MediaQuery.of(context).size.height*0.045
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              const Text("We Care You, We Serve You",style: TextStyle(color: Color(0xff0072bc),fontWeight: FontWeight.bold),),

              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              isLoading?const CircularProgressIndicator(color: Color(0xFF0C9869),):Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
