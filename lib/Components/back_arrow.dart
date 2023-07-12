import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Close App
          GestureDetector(
            onTap: () {
              SystemNavigator.pop();
            },
            child: Row(
              children: [
                // Arrow Shape
                SizedBox(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset("assets/icons/BackArrow.svg"),
                ),
                // Fill Text
                const Text(
                  "Back",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 10,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
