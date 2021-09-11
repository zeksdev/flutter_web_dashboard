import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;

  const InfoCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.topColor,
      required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      child: Container(
        height: 136,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 6),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 12),
            ],
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  color: !isActive ? topColor : active,
                  height: 5,
                ))
              ],
            ),
            Expanded(child: Container()),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "$title\n",
                  style: TextStyle(fontSize: 16, color: lightGrey),
                ),
                TextSpan(
                  text: "$value",
                  style: TextStyle(fontSize: 40, color: dark),
                ),
              ]),
              textAlign: TextAlign.center,
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    ));
  }
}
