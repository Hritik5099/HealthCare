class NearYouItem {
  final String? title, image,pageRout;

  NearYouItem({this.title, this.image,this.pageRout});
}

List<NearYouItem> demo_NearYou = [
  NearYouItem(
    image: "assets/doctor2.png",
    title: "Doctors",
    pageRout: "/doctor",
  ),
  NearYouItem(
    image: "assets/Hospital.png",
    title: "Hospitals",
    pageRout: "/hospital",
  ),
  NearYouItem(
    image: "assets/ambulance.png",
    title: "Ambulances",
    pageRout: "/ambulance",
  ),
];