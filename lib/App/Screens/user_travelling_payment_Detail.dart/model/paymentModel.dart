import 'package:flutter/material.dart';

class PaymentModel {
  final Color color;
  final String cardName;
  final String cardNumber;
  final String date;
  final String cvv;
  final String cardHolderName;
  PaymentModel({
    this.color = const Color.fromARGB(255, 46, 46, 46),
    this.cardName = 'Your New Card',
    required this.cardNumber,
    required this.cardHolderName,
    required this.date,
    required this.cvv,
  });
}
