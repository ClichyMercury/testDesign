import 'package:flutter/material.dart';

bool isSelected = false;

class TimeSelector extends StatefulWidget {
  const TimeSelector({super.key, required this.data});

  final String data;

  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 125,
        decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(
          widget.data,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        )),
      ),
    );
  }
}
