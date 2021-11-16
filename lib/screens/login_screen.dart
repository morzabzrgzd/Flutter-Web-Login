import 'package:flutter/material.dart';
import 'package:flutter_login_web/components/build_text_field.dart';
import 'package:flutter_login_web/components/login_btn.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/image.png'),
                )),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 180),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      'Welcome back',
                      style: GoogleFonts.roboto(
                          fontSize: 16, color: const Color(0xff2D3748)),
                    ),
                    Text(
                      'Login to your account',
                      style: GoogleFonts.roboto(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff1A202C)),
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
                                  fontSize: 14, color: const Color(0xff2D3748)),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot password?',
                            style: GoogleFonts.roboto(
                                fontSize: 14, color: const Color(0xff2C5282)),
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
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Join free today',
                              style: GoogleFonts.roboto(
                                  fontSize: 14, color: const Color(0xff2C5282)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
