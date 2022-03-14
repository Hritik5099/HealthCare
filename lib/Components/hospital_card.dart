
import 'package:healthy_u/all_Imports.dart';
var rating = 0.0.obs;
class HospitalCard extends StatelessWidget {
  const HospitalCard({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFBFDBD1)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RatingBar.builder(
                        itemSize: 20,
                        initialRating: rating.value,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (v) {
                          rating.value=v ;
                          print(rating);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        //Text1(text: "Dr. R. Manjunath", color: Colors.black, size: 15),
                        Text("Jindal Hospital",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                        SizedBox(height: 5,),
                        Text("General Physician"),
                        Text("33 years experience overall")
                      ],
                    ),
                  ],
                ),
                Divider(thickness: 2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration:BoxDecoration(
                            color: const Color(themeColor),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text1(text: "Connect", color: Colors.white, size: 10),
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: const Text("More info  ",style: TextStyle(color: Color(themeColor),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),



              ],
            ),
          ),
        ],
      ),
    );
  }
}