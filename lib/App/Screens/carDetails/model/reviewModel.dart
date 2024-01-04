class ReviewModel {
  final String name;
  final String position;
  final String review;
  final String time;
  final DateTime dateTime;
  final int rating;

  final String image;
  ReviewModel(
      {required this.name,
      required this.position,
      required this.review,
      required this.dateTime,
      required this.image,
      required this.time,
      required this.rating});
}

List<ReviewModel> reviewList = [
  ReviewModel(
      name: "Alex Stanton",
      position: "CEO at Bukalapak",
      review:
          "We are very happy with the service from the MORENT App. Morent has a low price ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022",
      rating: 4),
  ReviewModel(
      rating: 3,
      name: "Skylar Dias",
      position: "CEO at Amazon",
      review:
          "We are greatly helped by the services of the MORENT Application. Morent has a low ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022"),
  ReviewModel(
      name: "Alex Stanton",
      position: "CEO at Bukalapak",
      review:
          "We are very happy with the service from the MORENT App. Morent has a low price ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022",
      rating: 4),
  ReviewModel(
      rating: 5,
      name: "Alex Stanton",
      position: "CEO at Bukalapak",
      review:
          "We are very happy with the service from the MORENT App. Morent has a low price ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022"),
  ReviewModel(
      name: "Alex Stanton",
      position: "CEO at Bukalapak",
      review:
          "We are very happy with the service from the MORENT App. Morent has a low price ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022",
      rating: 4),
  ReviewModel(
      rating: 3,
      name: "Skylar Dias",
      position: "CEO at Amazon",
      review:
          "We are greatly helped by the services of the MORENT Application. Morent has a low ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022"),
  ReviewModel(
      rating: 5,
      name: "Alex Stanton",
      position: "CEO at Bukalapak",
      review:
          "We are very happy with the service from the MORENT App. Morent has a low price ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022"),
  ReviewModel(
      name: "Alex Stanton",
      position: "CEO at Bukalapak",
      review:
          "We are very happy with the service from the MORENT App. Morent has a low price ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022",
      rating: 4),
  ReviewModel(
      rating: 3,
      name: "Skylar Dias",
      position: "CEO at Amazon",
      review:
          "We are greatly helped by the services of the MORENT Application. Morent has a low ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022"),
  ReviewModel(
      rating: 5,
      name: "Fakiha Khalil",
      position: "CEO at Bukalapak",
      review:
          "We are very happy with the service from the MORENT App. Morent has a low price ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022"),
  ReviewModel(
      name: "Usame Khalil",
      position: "CEO at Bukalapak",
      review:
          "We are very happy with the service from the MORENT App. Morent has a low price ",
      dateTime: DateTime.now(),
      image: "assets/images/home/Image.png",
      time: "21July2022",
      rating: 4),
];
