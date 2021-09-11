import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  HorizontalMenuItem(this.itemName, this.onTap);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => onTap(),
      onHover: (value) {
        value ? menuController.onHover(itemName) : menuController.onHover("");
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                child: Container(width: 6, height: 40, color: dark),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              SizedBox(
                width: width / 80,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: menuController.isHovering(itemName) ? dark : lightGrey,
                ))
              else
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: dark,
                  size: 18,
                  weight: FontWeight.bold,
                ))
            ],
          ),
        ),
      ),
    );
  }
}
