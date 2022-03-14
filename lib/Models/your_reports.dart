class ReportsItem {
  final String? title, image,pageRout;

  ReportsItem({this.title, this.image,this.pageRout});
}

List<ReportsItem> demo_Reports = [
  ReportsItem(
    title: "Medicines",
    pageRout: "/medicine",
  ),
  ReportsItem(
    title: "Lab Testing",
    pageRout: "/labTest",
  ),
  ReportsItem(
    title: "Supplements",
    pageRout: "/supplements",
  ),
  ReportsItem(
    title: "Diet Plan",
    pageRout: "/diet",
  ),
  ReportsItem(
    title: "Gym Equipments",
    pageRout: "/gymEquipments",
  ),
];