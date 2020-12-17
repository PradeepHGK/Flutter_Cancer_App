class HospitalModel {
  String hospitalName;
  String description;
  String hospitalImageURL;
  double levelofMobsTrust;
  String location;

  HospitalModel(this.hospitalName, this.description, this.hospitalImageURL,
      this.levelofMobsTrust, this.location);
}

List<HospitalModel> hospitalList = [
  HospitalModel(
      "KMCH",
      "Lorem Epsium",
      "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png",
      0.9,
      "Address1"),
  HospitalModel(
      "KMCH",
      "Lorem Epsium",
      "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png",
      0.9,
      "Address2"),
  HospitalModel(
      "KMCH",
      "Lorem Epsium",
      "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png",
      0.9,
      "Address3"),
  HospitalModel(
      "KMCH",
      "Lorem Epsium",
      "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png",
      0.9,
      "Address4"),
  HospitalModel(
      "KMCH",
      "Lorem Epsium",
      "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png",
      0.9,
      "Address5"),
  HospitalModel(
      "KMCH",
      "Lorem Epsium",
      "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png",
      0.9,
      "Address6"),
];
