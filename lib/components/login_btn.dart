import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({
    Key? key,
    required this.primeyColor,
    required this.child,
  }) : super(key: key);

  final Color primeyColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: primeyColor,
          ),
          child: child),
    );
  }
}
