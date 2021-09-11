import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmall extends StatelessWidget {
  const OverviewCardsSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
        height: 400,
        child: Column(
          children: [
            const InfoCardSmall(
                title: "Rides in progress",
                value: "7",
                topColor: Colors.orange,
                isActive: true),
            SizedBox(
              height: width / 64,
            ),
            const InfoCardSmall(
                title: "Packages delivered",
                value: "17",
                topColor: Colors.lightGreen,
                isActive: false),
            SizedBox(
              height: width / 64,
            ),
            const InfoCardSmall(
                title: "Cancelled delivery",
                value: "3",
                topColor: Colors.redAccent,
                isActive: false),
            SizedBox(
              height: width / 64,
            ),
            const InfoCardSmall(
                title: "Scheduled deliveries",
                value: "3",
                topColor: Colors.redAccent,
                isActive: false),
            SizedBox(
              height: width / 64,
            ),
          ],
        ));
  }
}
