import 'package:flutter/material.dart';
import 'package:travel_app/main.dart';
import 'package:travel_app/widgets/attraction_list_view.dart';
import 'package:travel_app/widgets/bottom_bar_widget.dart';

import '../widgets/header_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryGray,
        iconTheme: IconThemeData(color: mainYellow),
        title: Center(
          child: Icon(Icons.airplanemode_on, color: mainYellow),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.notifications_on_outlined,
                  color: Colors.grey),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: mainYellow,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.all(20),
          child:
              const Icon(Icons.airplanemode_on, size: 80, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[primaryGray, secondaryGray],
          ),
        ),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderWidget(),
              AttractionListView(),
              BottomBarWidget()
            ]),
      ),
    );
  }
}
