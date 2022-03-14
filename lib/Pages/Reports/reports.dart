import 'package:healthy_u/Models/your_reports.dart';
import 'package:healthy_u/all_Imports.dart';

import '../../Components/reports_card.dart';
import '../../Components/service_provided_card.dart';
import '../../Models/services.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(themeColor2),
          automaticallyImplyLeading: false,
          title: const Text('Reports',style: TextStyle(color: Colors.black),),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children:List.generate(demo_Reports.length, (index) =>  Padding(
                  padding: const EdgeInsets.all(8),
                  child: ReportCard(reportsItem: demo_Reports[index],),
                ),
                )),
          ),
        ),
      ),
    );
  }
}