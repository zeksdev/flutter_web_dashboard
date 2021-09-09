import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/responsive_widget.dart';

AppBar topNav(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      backgroundColor: light,
      elevation: 0,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 24,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(
                Icons.menu,
                color: dark,
              ),
              onPressed: () {
                key.currentState?.openDrawer();
              },
            ),
      title: Row(
        children: [
          Visibility(
            visible: !ResponsiveWidget.isSmallScreen(context),
            child: Text(
              "Dashboard",
              style: TextStyle(
                  color: lightGrey, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(Icons.settings, color: dark),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: dark,
                ),
                onPressed: () {},
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: light, width: 2),
                  ),
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: light,
              backgroundImage: const AssetImage("assets/images/profile.jpg"),
            ),
          )
        ],
      ),
    );
