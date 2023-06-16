import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  final String icon;
  final int currentIndex;
  final int index;
  final void Function(int) changeIndex;

  const NavigationBarItem(
      {Key? key,
      required this.icon,
      required this.currentIndex,
      required this.changeIndex,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white.withOpacity(0.2),
          onTap: () {
            changeIndex(index);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  icon,
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
