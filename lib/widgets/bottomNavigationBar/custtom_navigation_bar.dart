import 'package:flutter/material.dart';

import 'navigation_bar_item.dart';

class CustomNavigationBar extends StatefulWidget {
  final Function(int) changeIndex;
  final int currentIndex;
  const CustomNavigationBar({
    Key? key,
    required this.changeIndex,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 50),
          NavigationBarItem(
            icon: "assets/icons/home.png",
            changeIndex: widget.changeIndex,
            index: 0,
            currentIndex: widget.currentIndex,
          ),
          NavigationBarItem(
            icon: "assets/icons/menu.png",
            changeIndex: widget.changeIndex,
            index: 1,
            currentIndex: widget.currentIndex,
          ),
          NavigationBarItem(
            icon: "assets/icons/custum.png",
            changeIndex: widget.changeIndex,
            index: 2,
            currentIndex: widget.currentIndex,
          ),
          NavigationBarItem(
            icon: "assets/icons/settings.png",
            index: 3,
            currentIndex: widget.currentIndex,
            changeIndex: widget.changeIndex,
          ),
          const SizedBox(width: 50),
        ],
      ),
    );
  }
}
