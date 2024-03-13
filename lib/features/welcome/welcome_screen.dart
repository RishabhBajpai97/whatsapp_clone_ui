import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111b21),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Heading
              Text(
                "Welcome To WhatsApp",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              //Image
              Padding(
                padding: const EdgeInsets.all(50),
                child: Image.asset(
                  "assets/images/circle.png",
                  color: const Color(0xff00a884),
                ),
              ),
              //Cndition
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: "Read our",
                    children: [
                      TextSpan(
                        text: " Privacy Policy. ",
                        style: TextStyle(
                          color: Color(0xff53bdeb),
                        ),
                      ),
                      TextSpan(text: 'Tap "Agree and Continue" to accept the'),
                      TextSpan(
                          text: " Terms of Service. ",
                          style: TextStyle(color: Color(0xff53bdeb)))
                    ],
                    style: TextStyle(fontSize: 16, height: 1.5)),
              ),
              SizedBox(
                height: 20.h,
              ),
              //Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/login");
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      backgroundColor: const Color(0xff00a884),
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      "Agree and Continue",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              //from Facebook
              const Text(
                "from",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "FACEBOOK",
                style: TextStyle(color: Color(0xff00a884), fontSize: 20.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
