import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:life_app/src/app_colors.dart';
import 'package:life_app/views/items_view/items_view.dart';
import 'package:life_app/views/notification_view/notification_view.dart';
import 'package:life_app/views/one_item_view/one_item_view.dart';
import 'package:life_app/views/profile_view/profile_view.dart';
import 'package:life_app/views/qr_scanner_view/qr_scanner_view.dart';



class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _page = 2;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<Widget> viwes = [
    OneItemView(),
    QrScannerView(),
    ItemsView(),
    NotificationsView(),
    ProfileView(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 2,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.ac_unit, size: 30),
            Icon(Icons.qr_code_scanner_outlined, size: 30),
            Icon(Icons.home_filled, size: 30),
            Icon(Icons.notifications, size: 30),
            Icon(Icons.person_rounded, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: AppColors.KPrimaryColor,
          backgroundColor: AppColors.KPrimaryGrayColor,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              viwes[_page],
            ],
          ),
        ));
  }
}