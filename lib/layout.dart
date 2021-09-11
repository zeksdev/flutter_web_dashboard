import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/widgets/large_screen.dart';
import 'package:flutter_web_dashboard/widgets/responsive_widget.dart';
import 'package:flutter_web_dashboard/widgets/side_menu.dart';
import 'package:flutter_web_dashboard/widgets/small_screen.dart';
import 'package:flutter_web_dashboard/widgets/top_nav.dart';

class Layout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
      drawer: const Drawer(
        child: SideMenu(),
      ),
    );
  }
}
