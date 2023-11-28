import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowWidget extends StatelessWidget {
  final String name;
  final String path;
  final Color? colors;
  final Color? textColor;
  const RowWidget(
      {super.key,
      required this.name,
      this.colors,
      required this.path,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 145,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: colors,
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(path),
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: textColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
