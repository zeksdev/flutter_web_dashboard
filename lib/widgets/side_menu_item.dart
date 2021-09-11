import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/widgets/horizontal_menu_item.dart';
import 'package:flutter_web_dashboard/widgets/responsive_widget.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const SideMenuItem(this.itemName, this.onTap);

  @override
  Widget build(BuildContext context) {
    return HorizontalMenuItem(itemName, onTap);
  }
}
