import 'package:flutter/material.dart';

class CardModel {
  String facilityName;
  String facilityAddress;
  String facilityText;
  String facility;
  Color cardColor;

  CardModel({
    required this.facilityName,
    required this.facilityAddress,
    required this.facility,
    required this.facilityText,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    facilityName: "Sunshine Coast University Hospital",
    facilityAddress: "6 Doherty Street, Birtinya Qld 4575",
    facility: "assets/images/scuh.jpg",
    facilityText:
        "The Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.",
    cardColor: Color(0xff3ab2c2),
  ),
  CardModel(
    facilityName: "Nambour General Hospital",
    facilityAddress: "6 Doherty Street, Birtinya Qld 4575",
    facility: "assets/images/scuh.jpg",
    facilityText:
        "The Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.",
    cardColor: Color(0xff8740d9),
  ),
  CardModel(
    facilityName: "Sunshine Coast University Hospital",
    facilityAddress: "6 Doherty Street, Birtinya Qld 4575",
    facility: "assets/images/scuh.jpg",
    facilityText:
        "The Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.",
    cardColor: Color(0xff3ab2c2),
  ),
  CardModel(
    facilityName: "Sunshine Coast University Hospital",
    facilityAddress: "6 Doherty Street, Birtinya Qld 4575",
    facility: "assets/images/scuh.jpg",
    facilityText:
        "The Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.",
    cardColor: Color(0xff3ab2c2),
  ),
  CardModel(
    facilityName: "Sunshine Coast University Hospital",
    facilityAddress: "6 Doherty Street, Birtinya Qld 4575",
    facility: "assets/images/scuh.jpg",
    facilityText:
        "The Sunshine Coast University Hospital (SCUH) at Birtinya commenced services in March 2017, and will expand to a 738-bed facility. SCUH offers a range of new and expanded services for the Sunshine Coast, including the Sunshine Coast Health Institute – a unique partnership for education and research - on site.",
    cardColor: Color(0xff3ab2c2),
  ),
];
