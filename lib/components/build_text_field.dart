import 'package:flutter/material.dart';
import 'package:flutter_login_web/helpers/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    Key? key,
    required this.title,
    this.obscureText = false,
    required this.hintText,
  }) : super(key: key);

  final String title;
  final bool obscureText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: GoogleFonts.roboto(
          fontSize: 16,
          color:
              ResponsiveWidget.isDesktop(context) ? Colors.grey : Colors.white,
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        obscureText: obscureText,
        cursorColor: Colors.black,
        cursorHeight: 2,
        cursorWidth: 1,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            fontSize: 12,
            color: ResponsiveWidget.isDesktop(context)
                ? Colors.grey
                : Colors.white70,
          ),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: const BorderSide(
              color: Color(0xffE8E8E8),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: const BorderSide(
              color: Color(0xff000000),
              width: 1,
            ),
          ),
        ),
      )
    ]);
  }
}
