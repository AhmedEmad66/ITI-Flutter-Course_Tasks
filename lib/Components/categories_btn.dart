import 'package:flutter/material.dart';

class CategoriesBTN extends StatelessWidget {
  const CategoriesBTN({
    super.key,
    required this.title,
    required this.onTap,
    required this.color,
  });
  final String title;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          // margin: const EdgeInsets.only(bottom: 20),
          width: double.infinity,
          height: MediaQuery.of(context).size.height*1/3,
          decoration: BoxDecoration(
            color: color,
            // borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: "MyFont",
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}