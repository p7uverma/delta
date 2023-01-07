import 'dart:ui';

import 'package:answer_it/utils/colors.dart';
import 'package:answer_it/utils/global_vars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colours.darkScaffoldColor,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colours.textColor,
          ),
        ),
        title: Text(
          'Credits',
          style: TextStyle(
            color: Colours.textColor,
          ),
        ),
      ),
      backgroundColor: Colours.darkScaffoldColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Globals.bg2),
            fit: BoxFit.fill,
          ),
        ),
        width: Get.width,
        height: Get.height,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 15,
          ),
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  'Developed by Priyanshu Verma.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey.shade700,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Share This Application With Friends...',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Spacer(flex: 10),
                OutlinedButton(
                  onPressed: () {
                    Share.share(
                      'check out all new app solves all questions answer with the help of AI. https://github.com/priyanshu-creator/answer-it',
                      subject: 'New App',
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colours.primaryColor,
                    fixedSize: Size(100, 50),
                  ),
                  child: Text(
                    'Share',
                    style: TextStyle(color: Colours.textColor),
                  ),
                ),
                Spacer(),
                Text(
                  '..App is in Development..',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}