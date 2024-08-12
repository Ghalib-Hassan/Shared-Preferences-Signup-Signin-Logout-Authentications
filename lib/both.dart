import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preference_signup_login/signin.dart';
import 'package:shared_preference_signup_login/signup.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.red.shade300, Colors.black])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            const FaIcon(
              FontAwesomeIcons.dumbbell,
              size: 100,
            ),
            Text(
              'FITNESS CLUB',
              style: TextStyle(fontSize: 20.sp),
            ),
            SizedBox(
              height: 90.h,
            ),
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 18.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 120.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12.withOpacity(.7)),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              width: 120.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 150.h,
            ),
            Text(
              'Login with Social Media',
              style: TextStyle(fontSize: 10.sp),
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    String link = 'https://www.instagram.com/ghalib_hassan123/';
                    final Uri url = Uri.parse(link);
                    print('Attempting to launch URL: $url');
                    if (await launchUrl(url)) {
                      print('Launching URL...');
                      await launchUrl(url);
                    } else {
                      print('Could not launch URL');
                    }
                  },
                  child: Container(
                    width: 35.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30).w)),
                    child: const Center(
                        child: FaIcon(
                      FontAwesomeIcons.instagram,
                      size: 30,
                    )),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  onTap: () async {
                    String link = 'https://twitter.com/GhalibH14N';
                    final Uri url = Uri.parse(link);
                    print('Attempting to launch URL: $url');
                    if (await launchUrl(url)) {
                      print('Launching URL...');
                      await launchUrl(url);
                    } else {
                      print('Could not launch URL');
                    }
                  },
                  child: Container(
                    width: 35.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30).w)),
                    child: const Center(
                        child: FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 30,
                    )),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  onTap: () async {
                    String link = 'https://facebook.com/ghalib.hassan.2003';
                    final Uri url = Uri.parse(link);
                    print('Attempting to launch URL: $url');
                    if (await launchUrl(url)) {
                      print('Launching URL...');
                      await launchUrl(url);
                    } else {
                      print('Could not launch URL');
                    }
                  },
                  child: Container(
                    width: 35.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.all(const Radius.circular(30).w)),
                    child: const Center(
                        child: FaIcon(
                      FontAwesomeIcons.facebookF,
                      size: 30,
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
