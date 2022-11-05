import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:new_resume_app/responsive/responsiveController.dart';
import 'package:new_resume_app/responsive/screens/narrowLayout.dart';
import 'package:new_resume_app/responsive/screens/wideLayout.dart';
import 'package:new_resume_app/socialmedia_calls.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return const Scaffold(
      body: ResponsiveLayout(
          wideLayout: WideLayout(), narrowLayout: NarrowLayout()),
    );
    
  }
}
