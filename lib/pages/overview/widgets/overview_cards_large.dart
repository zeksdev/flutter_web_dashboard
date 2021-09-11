import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/info_card.dart';

class OverviewCardsLarge extends StatelessWidget {
  const OverviewCardsLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        const InfoCard(
            title: "Rides in progress",
            value: "7",
            topColor: Colors.orange,
            isActive: false),
        SizedBox(
          width: width / 64,
        ),
        const InfoCard(
            title: "Packages delivered",
            value: "17",
            topColor: Colors.lightGreen,
            isActive: false),
        SizedBox(
          width: width / 64,
        ),
        const InfoCard(
            title: "Cancelled delivery",
            value: "3",
            topColor: Colors.redAccent,
            isActive: false),
        SizedBox(
          width: width / 64,
        ),
        const InfoCard(
            title: "Scheduled deliveries",
            value: "3",
            topColor: Colors.redAccent,
            isActive: true),
        SizedBox(
          width: width / 64,
        ),
      ],
    );
  }
}
