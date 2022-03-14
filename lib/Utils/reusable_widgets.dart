
import 'package:healthy_u/all_Imports.dart';
class ImageTextButton extends StatelessWidget {
  const ImageTextButton({
    required this.image,
    required this.name,
    Key? key,
  }) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height < 800?8:10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: MediaQuery.of(context).size.height < 700?10:15,
                    child: Image.asset(image)),
              ),
              Text(name,style: const TextStyle(color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}

class TextFormsEdited extends StatelessWidget {
  const TextFormsEdited({
    required this.text,
    required this.labelText,
    Key? key,
  }) : super(key: key);
  final String text;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          const SizedBox(height:10),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey,width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(10),
                )
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: labelText,
                suffixIcon: text!="Email"?GestureDetector(child: const Icon(Icons.remove_red_eye,color: Color(themeColor),),):null,
                prefixIcon: Container(
                  width: 10,
                  child: text=="Email"?const Icon(Icons.email_outlined):Icon(Icons.password),
                ),
                hintStyle: TextStyle(color:Colors.black54,fontSize: ResponsiveWidget.isDesktop(context)?20:ResponsiveWidget.isTablet(context)?15:0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          // Get.defaultDialog(
          //   title: "$text As..",
          //   middleText: "Please Select One",
          //   actions: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         GestureDetector(
          //           onTap:(){},
          //             child: Row(
          //               children: const[
          //                 Icon(Icons.add_business_outlined,color: Colors.white,),
          //                 Text("Doctor",style:TextStyle(color: Colors.white)),
          //               ],
          //             ),
          //         ),
          //         GestureDetector(
          //           onTap:(){},
          //           child: Row(
          //             children: const[
          //               Icon(Icons.account_circle_outlined,color: Colors.white),
          //               Text("Patient",style:TextStyle(color: Colors.white)),
          //             ],
          //           ),
          //         ),
          //       ],
          //     )
          //
          //   ],
          //   backgroundColor: const Color(0xFF0C9869),
          //   titleStyle: TextStyle(color: Colors.white),
          //   middleTextStyle: TextStyle(color: Colors.white),
          //
          // );
          Get.toNamed("/continueAsPage");
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF0C9869),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text(text,style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: MediaQuery.of(context).size.height < 800?15:20,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconTextForm extends StatelessWidget {
  const IconTextForm({
    required this.iconName,
    required this.name,
    Key? key,
  }) : super(key: key);
  final Icon iconName;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        decoration:  InputDecoration(
          icon: iconName,
          hoverColor:Color(themeColor) ,
          label: Text("$name",style: TextStyle(color: Color(themeColor)),),
        ),
      ),
    );
  }
}


class AddsBanner extends StatelessWidget {
   const AddsBanner({
     this.image="assets/Hospital.png",
    Key? key,
  }) : super(key: key);

   final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFBFDBD1)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text1(text: "\n30% OFF, FLAT deals\nand much more..",size: 15,color: Colors.black,),
                  ],
                ),
                TextButton(
                  onPressed: (){},
                  child: Row(
                    children: const [
                      Text("See More offers",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.arrow_circle_right_rounded,color: Colors.black,size: 20,),
                      ),
                    ],
                  ),
                )

              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset("$image",width: 130,),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class InsideTopBar extends StatelessWidget {
  const InsideTopBar({
    required this.hint_text,
    Key? key,
  }) : super(key: key);

  final String hint_text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(themeColor2)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 10,),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey,width: 2),
                      borderRadius: const BorderRadius.all(Radius.circular(15),
                      )
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: hint_text,
                      prefixIcon: GestureDetector(
                          onTap:(){},child: const Icon(Icons.search,color: Color(themeColor),)),
                      hintStyle: TextStyle(color:Colors.black54,fontSize: ResponsiveWidget.isDesktop(context)?20:ResponsiveWidget.isTablet(context)?15:0),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}