import 'package:flutter/material.dart';

class TempletesCard extends StatelessWidget {
  const TempletesCard(
      {super.key,
      required this.thisColors,
      required this.colorName,
      required this.data,
      required this.dateTime,
      required this.price,
      required this.priceColor});

  final Color thisColors;
  final String colorName;
  final String data;
  final String dateTime;
  final String price;
  final Color priceColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: thisColors),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      colorName,
                      style: greyTextStyle(),
                    ),
                    Text(
                      data,
                      style: blackTextStyle(),
                    ),
                    Text(
                      dateTime,
                      style: greyTextStyle(),
                    ),
                  ]),
            ),
            Container(
              width: 170,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: priceColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Paid",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      price,
                      style: blackTextStyle(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle blackTextStyle() {
    return TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
  }

  TextStyle greyTextStyle() =>
      TextStyle(color: Colors.grey, fontWeight: FontWeight.bold);
}
