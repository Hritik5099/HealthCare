
import 'package:healthy_u/all_Imports.dart';

class TopTabs extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        //color: Color(0xffFFFAF3),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
      ),
      width: width,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: ResponsiveWidget.isMobileLarge(context)?250:ResponsiveWidget.isTablet(context)?400:800,
              height: ResponsiveWidget.isDesktop(context)?40:ResponsiveWidget.isTablet(context)?30:20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.orangeAccent),
                  borderRadius: BorderRadius.all(Radius.circular(5),
                  )
              ),

              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black38,fontSize: ResponsiveWidget.isDesktop(context)?20:ResponsiveWidget.isTablet(context)?15:0),
                  prefix: SizedBox(width: 20,),
                  suffixIcon: InkWell(
                    child: Icon(
                      Icons.search,
                      color: Colors.orangeAccent,
                      size: ResponsiveWidget.isDesktop(context)?30:ResponsiveWidget.isTablet(context)?20:10,),
                    onTap: (){},
                  ),
                ),
              ),
            ),
            //ModifiedTextIcon(iconColor: Colors.black54,icondata: LineIcons.search, max: 12, data: 'Search', min: 8,color: Colors.black54,weight: FontWeight.bold,),
            SizedBox(width: 20,),
            InkWell(
              onTap: (){},
              child: Text("Sign In"),
              //child: ResponsiveWidget.isMobile(context)?Text("Sign in",style: TextStyle(color:Color(0xffB10060)),):ModifiedTextIcon(iconColor: Color(0xffB10060),icondata: LineIcons.user, max: 12, data: 'Sign In', min: 8,color: Color(0xffB10060),weight: FontWeight.bold),
            ),

            // SizedBox(width: 20,),
            // ModifiedTextIcon(iconColor: Colors.black54,icondata: LineIcons.shoppingBag, max: 12, data: 'Cart', min: 8,color: Colors.black54,weight: FontWeight.bold)
          ],
        ),
      ),
    );
  }

}

class LogInTopBar extends StatelessWidget {
  const LogInTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height < 800?180:300,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:const Color(themeColor2),
        image: const DecorationImage(
          image: AssetImage("assets/banner.png"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
