import 'package:flutter/material.dart';

class CardDataState {
  final String title;
  final String subTitle;
  final IconData icons;
  final String teamMembers;
  final String tasks;

  CardDataState(
      this.title, this.subTitle, this.icons, this.teamMembers, this.tasks);
}

final List<CardDataState> cardData = [
  CardDataState(
    'Jumbo Dashboard',
    "First Privacy Assistant Platform",
    Icons.dashboard_customize_rounded,
    '3',
    '30',
  ),
  CardDataState(
    'Finance Dashboard',
    "First Finance Assistant Platform",
    Icons.attach_money_outlined,
    '5',
    '10',
  ),
  CardDataState(
    'Development Dashboard',
    "First Development Assistant Platform",
    Icons.developer_board,
    '6',
    '30',
  ),
];
