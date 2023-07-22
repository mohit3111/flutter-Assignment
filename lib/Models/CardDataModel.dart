class CardDataModel {
  String? title;
  String? subTitle;
  String? description;
  String? image;

  CardDataModel({this.title, this.subTitle, this.description, this.image});

  static List<CardDataModel> row_1 = [
    CardDataModel(
        title: "LIFESTYLE",
        subTitle: "A complete guide for your new born baby",
        description: "16 lessons",
        image: "frame1.jpg"),
    CardDataModel(
        title: "Working Parents",
        subTitle: "Understanding of human behaviour",
        description: "16 lessons",
        image: "frame1.jpg"),
    CardDataModel(
        title: "LIFESTYLE",
        subTitle: "Understanding of human behaviour",
        description: "16 lessons",
        image: "frame1.jpg"),
  ];
  static List<CardDataModel> row_2 = [
    CardDataModel(
        title: "LIFESTYLE",
        subTitle: "A complete guide for your new born baby",
        description: "13 Feb, Sunday",
        image: "frame2.jpg"),
    CardDataModel(
        title: "Working Parents",
        subTitle: "Understanding of human behaviour",
        description: "13 Feb, Sunday",
        image: "frame2.jpg"),
    CardDataModel(
        title: "LIFESTYLE",
        subTitle: "Understanding of human behaviour",
        description: "13 Feb, Sunday",
        image: "frame2.jpg"),
  ];
  static List<CardDataModel> row_3 = [
    CardDataModel(
        title: "LIFESTYLE",
        subTitle: "A complete guide for your new born baby",
        description: "3 min",
        image: "frame2.jpg"),
    CardDataModel(
        title: "Working Parents",
        subTitle: "Understanding of human behaviour",
        description: "3 min",
        image: "frame2.jpg"),
    CardDataModel(
        title: "LIFESTYLE",
        subTitle: "Understanding of human behaviour",
        description: "3 min",
        image: "frame2.jpg"),
  ];
}
