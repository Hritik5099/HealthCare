import 'package:healthy_u/all_Imports.dart';

class NewAccountPage extends StatelessWidget {
  const NewAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(themeColor2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10,),
          Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/doctor.png")
            ),
          ),
          Text1(text: "Sign Up ",size: 20,color: Colors.black,),
          const TextFormsEdited(text: "Email",labelText: "abc@gmail.com",),
          const TextFormsEdited(text: "Password",labelText: "Aa@1234",),
          const TextFormsEdited(text: "Confirm Password",labelText: "Aa@1234",),
          const ContainerButton(text: "Sign Up",),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already Have an account?",style: TextStyle(fontSize: 15,color:Colors.black),),
              ClickableText(text: "Log In",size: 15,pageName: "/loginPage",),
            ],
          ),
          const DividerText(text: "or continue with"),
          SizedBox(height: MediaQuery.of(context).size.height < 800?10:20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.height < 800?8:10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: CircleAvatar(
                              backgroundColor: const Color(themeColor2),
                              radius: MediaQuery.of(context).size.height < 700?10:15,
                              child: Image.asset("assets/google.png")),
                        ),
                        const Text("Google",style: const TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.height < 800?8:10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: CircleAvatar(
                              backgroundColor: const Color(themeColor2),
                              radius: MediaQuery.of(context).size.height < 700?10:15,
                              child: Image.asset("assets/apple.png")),
                        ),
                        const Text("Apple Id",style:  TextStyle(color: Colors.black),)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),

        ],
      ),
    );
  }
}


