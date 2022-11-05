import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:new_resume_app/socialmedia_calls.dart';

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
          padding:
              EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w, bottom: 10.h),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 40.h, left: 50.w, right: 50.w),
                child: Container(
                  width: size.width * 0.60.w,
                  height: size.height * 0.30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/abraham.jpg'),
                          alignment: Alignment.center)),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //-----Name-----
              RichText(
                text: TextSpan(
                    text: 'Abraham IBORIDA ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp,
                        color: Colors.black54),
                    children: [
                      TextSpan(
                        text: '(CYRUS)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: const Color.fromARGB(134, 247, 139, 17)),
                      ),
                    ]),
              ),
              Text(
                'Mobile App Developer',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 15.h,
              ),
              //--- About
              SizedBox(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  textAlign: TextAlign.center,
                  'I am a passionate Mobile Application Developer and a Machine Learning enthusiast. I believe in deligence, hardwork, integrity and honesty',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black54.withOpacity(0.3),
                  ),
                ),
              )),

              SizedBox(
                height: 15.h,
              ),
              //-----What i can do for the company-------
              const Divider(),

              SizedBox(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Text(
                  textAlign: TextAlign.center,
                  'I build adaptive & responsive mobile applications for companies with better aesthetics, which increases companies conversions by addition 40% and utimately increase revenue ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 14.sp,
                    color: Colors.black54.withOpacity(0.3),
                  ),
                ),
              )),
              const Divider(),
              //----Social Media----
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterSocialButton(
                    onTap: () {
                      SocialMediaLinks().launchURLTwitter();
                    },
                    mini: true,
                    buttonType: ButtonType.twitter,
                  ),
                  FlutterSocialButton(
                    onTap: () {
                      SocialMediaLinks().launchURLGitHub();
                    },
                    mini: true,
                    buttonType: ButtonType.github,
                  ),
                  FlutterSocialButton(
                    onTap: () {
                      SocialMediaLinks().launchURLLinkedIn();
                    },
                    mini: true,
                    buttonType: ButtonType.linkedin,
                  ),
                  FlutterSocialButton(
                    onTap: () {
                      SocialMediaLinks().launchURLWhatsApp();
                    },
                    mini: true,
                    buttonType: ButtonType.phone,
                  ),
                ],
              ),
              // Text('thankkk' * 2000),
            ]),
          )),
    );
  }
}
