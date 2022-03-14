import 'package:healthy_u/all_Imports.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LogInTopBar(),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text1(text: logInString,size: 20,color: Colors.black,),
                SizedBox(height: MediaQuery.of(context).size.height < 700?10:20,),
                const DividerText(text: "Log in ",),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey,width: 2),
                        borderRadius: const BorderRadius.all(Radius.circular(10),
                        )
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "+91 Phone Number",
                        prefixIcon: Container(
                          width: 10,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: (){},
                                child: const Icon(Icons.flag,color: Colors.black,),
                              ),
                              GestureDetector(
                                onTap: (){},
                                child: const Icon(Icons.arrow_drop_down_sharp,color: Colors.black,),
                              ),
                            ],
                          ),
                        ),
                        hintStyle: TextStyle(color:Colors.black54,fontSize: ResponsiveWidget.isDesktop(context)?20:ResponsiveWidget.isTablet(context)?15:0),
                      ),
                    ),
                  ),
                ),
                const ContainerButton(text: "Log In",),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an Account?",style: TextStyle(fontSize: 15,color:Colors.black),),
                    ClickableText(text: "Sign Up",size: 15,pageName: "/newAccount",),
                  ],
                ),
                const SizedBox(height: 10,),
                const DividerText(text: "or continue with"),
                SizedBox(height: MediaQuery.of(context).size.height < 800?10:20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const[
                    ImageTextButton(image: "assets/google.png",name: "Google",),
                    ImageTextButton(image: "assets/gmail.png",name: "Gmail",),
                    ImageTextButton(image: "assets/apple.png",name: "Apple Id",),
                  ],
                ),
                const SizedBox(height: 30,),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     const Text("By continuing, you agree to our"),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         GestureDetector(
                //           onTap: (){},
                //           child: const Text("Terms of service ",style:TextStyle(color: Colors.grey)),
                //         ),
                //         const Text("&"),
                //         GestureDetector(
                //           onTap: (){},
                //           child: const Text(" Privacy Policy ",style:TextStyle(color: Colors.grey)),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}







