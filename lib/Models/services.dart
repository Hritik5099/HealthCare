class ServiceItems {
  final String? title, image,pageRout;

  ServiceItems({this.title, this.image,this.pageRout});
}

List<ServiceItems> demo_Services = [
  ServiceItems(
    image: "assets/medicine.png",
    title: "Medicines",
    pageRout: "/medicine",
    ),
  ServiceItems(
    image: "assets/lab.png",
    title: "Lab Testing",
    pageRout: "/labTest",
    ),
  ServiceItems(
    image: "assets/supplement.png",
    title: "Supplements",
    pageRout: "/supplements",
    ),
  ServiceItems(
    image: "assets/dite.png",
    title: "Diet Plan",
    pageRout: "/diet",
    ),
  ServiceItems(
    image: "assets/gym.png",
    title: "Gym Equipments",
    pageRout: "/gymEquipments",
    ),
];