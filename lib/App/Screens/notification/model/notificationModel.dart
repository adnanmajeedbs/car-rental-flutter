class NotificationModel {
  final String titel;
  final String text;
  final String time;
  NotificationModel(
      {required this.titel, required this.text, required this.time});
}

List<NotificationModel> notificationList = [
  NotificationModel(
    titel: "You Rent a car successfully",
    text: "text",
    time: "1m ago",
  ),
  NotificationModel(
    titel: "Payment Notification",
    text: "text",
    time: "10m ago",
  ),
  NotificationModel(
    titel: "You give a Review",
    text: "text",
    time: "12oct",
  ),
];
