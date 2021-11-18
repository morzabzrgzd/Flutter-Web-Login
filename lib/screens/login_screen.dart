import 'package:flutter/material.dart';
import 'package:flutter_login_web/components/build_text_field.dart';
import 'package:flutter_login_web/components/login_btn.dart';
import 'package:flutter_login_web/helpers/responsive_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ResponsiveWidget(
          desktop: Row(
            children: [
              Expanded(
                child: loginImage(),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  alignment: Alignment.center,
                  child: buildLoginFormAndBtn(),
                ),
              ),
            ],
          ),
          tablet: Stack(
            children: [
              loginImage(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.25),
                alignment: Alignment.center,
                child: buildLoginFormAndBtn(),
              )
            ],
          ),
          mobile: Stack(
            children: [
              loginImage(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                alignment: Alignment.center,
                child: buildLoginFormAndBtn(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column buildLoginFormAndBtn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Text(
          'Welcome back',
          style: GoogleFonts.roboto(
            fontSize: 16,
            color: ResponsiveWidget.isDesktop(context)
                ? const Color(0xff2D3748)
                : Colors.white70,
          ),
        ),
        Text(
          'Login to your account',
          style: GoogleFonts.roboto(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: ResponsiveWidget.isDesktop(context)
                ? const Color(0xff2D3748)
                : Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        const BuildTextField(
          title: 'Email',
          hintText: 'Enter Your Email',
        ),
        const SizedBox(height: 16),
        const BuildTextField(
          title: 'Password',
          hintText: 'Enter Your Password',
          obscureText: true,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  side: const BorderSide(color: Color(0xffE8E8E8)),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  'Remember me',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: ResponsiveWidget.isDesktop(context)
                        ? Colors.grey
                        : Colors.white,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot password?',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: ResponsiveWidget.isDesktop(context)
                      ? Colors.grey
                      : Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        LoginBtn(
          primeyColor: const Color(0xff04C35C),
          child: Text(
            'Login now',
            style: GoogleFonts.roboto(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 16),
        LoginBtn(
          primeyColor: const Color(0xff2D3748),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/google.png'),
              const SizedBox(width: 10),
              Text(
                'Or sign-in with google',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account?',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: ResponsiveWidget.isDesktop(context)
                      ? Colors.grey
                      : Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Join free today',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: ResponsiveWidget.isDesktop(context)
                        ? Colors.grey
                        : Colors.red,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Container loginImage() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/image.png'),
      )),
    );
  }
}
