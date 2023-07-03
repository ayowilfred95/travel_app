import 'package:flutter/material.dart';

class BottomBarModel {
  IconData? icon;
  bool? isSelected;

// constructor
  BottomBarModel({this.icon, this.isSelected});
}

// populate the list of BottomBarModel items

final List<BottomBarModel> bottomBarListItems = [
  BottomBarModel(icon: Icons.explore_outlined, isSelected: true),
  BottomBarModel(icon: Icons.favorite_border, isSelected: false),
  BottomBarModel(icon: Icons.comment_outlined, isSelected: false),
  BottomBarModel(icon: Icons.account_circle_outlined, isSelected: false),
];
