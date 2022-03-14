import 'package:flutter/material.dart';
import 'package:healthy_u/Models/services.dart';
import 'package:healthy_u/Models/your_reports.dart';
import 'package:healthy_u/all_Imports.dart';

class ReportCard extends StatelessWidget {
  const ReportCard({
    required this. reportsItem,
    Key? key,
  }) : super(key: key);

  final ReportsItem reportsItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            Get.toNamed("${reportsItem.pageRout}");
          },
          child: Card(
            elevation: 3,
            shadowColor: const Color(themeColor2),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        //borderRadius: BorderRadius.circular(0),
                        color: Color(0xFFBFDBD1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text1(text: "10 March 2022", color: Colors.black, size: 15),
                            const Text("Report no:-2")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap:(){},
                                  child: const Icon(Icons.remove_red_eye,color: Color(themeColor),)),
                              const SizedBox(width: 10,),
                              GestureDetector(
                                  onTap:(){},
                                  child: const Icon(Icons.download,color: Color(themeColor),)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
        Text1(text: "${reportsItem.title}",size: 15,color: Colors.black,)
      ],
    );
  }
}