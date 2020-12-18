import 'package:lorem_ipsum/lorem_ipsum.dart';

class NaturalTreatmentInfo {
  String hospitalName;
  String informationText;
  String comments;
  String imageURL;
  int age;

  NaturalTreatmentInfo(this.hospitalName, this.age, this.informationText,
      this.comments, this.imageURL);

  List<Testimony> testimonial = new List<Testimony>();
}

class Testimony {
  String userName;
  String comments;
  String timeCommented;

  Testimony(this.userName, this.comments, this.timeCommented);
}

List<NaturalTreatmentInfo> naturalRemedyList = [
  NaturalTreatmentInfo(loremIpsum(words: 2), 20, loremIpsum(paragraphs: 2),
      loremIpsum(words: 10), ""),
  NaturalTreatmentInfo(loremIpsum(words: 2), 30, loremIpsum(paragraphs: 2),
      loremIpsum(words: 10), ""),
  NaturalTreatmentInfo(loremIpsum(words: 2), 40, loremIpsum(paragraphs: 2),
      loremIpsum(words: 10), ""),
  NaturalTreatmentInfo(loremIpsum(words: 2), 55, loremIpsum(paragraphs: 2),
      loremIpsum(words: 10), ""),
  NaturalTreatmentInfo(loremIpsum(words: 2), 44, loremIpsum(paragraphs: 2),
      loremIpsum(words: 10), ""),
  NaturalTreatmentInfo(loremIpsum(words: 2), 45, loremIpsum(paragraphs: 2),
      loremIpsum(words: 10), ""),
  NaturalTreatmentInfo(loremIpsum(words: 2), 56, loremIpsum(paragraphs: 2),
      loremIpsum(words: 10), ""),
  NaturalTreatmentInfo(loremIpsum(words: 2), 67, loremIpsum(paragraphs: 2),
      loremIpsum(words: 10), ""),
  NaturalTreatmentInfo(loremIpsum(words: 2),55, loremIpsum(paragraphs: 2),
      loremIpsum(words: 10), ""),
];
