import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:schedule_management_platform/res/appassets.dart';

import 'package:schedule_management_platform/res/appcolors.dart';
import 'package:schedule_management_platform/res/stringconstent.dart';
import 'package:schedule_management_platform/res/textstyle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: AppColors.greenColor,
            child: Stack(
              children: [
                Positioned(
                  left: _width * 0.253,
                  top: _height * 0.02,
                  child: Image.asset(
                    AppAssets.bgvectorImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: _height * 0.3,
                    ),
                    buildSubjectsContainer(_height, _width),
                  ],
                ),
                Positioned(
                  left: _width * 0.45,
                  top: _height * 0.025,
                  height: _height * 0.3,
                  child: Image.asset(
                    AppAssets.mainvectorImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildSubjectsContainer(double _height, double _width) {
    return Container(
      padding: const EdgeInsets.only(left: 28.0, top: 28.0),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringConstants.subjects,
            style: AppTextStyles.h1Textstyle,
          ),
          Text(
            StringConstants.recommendationsForYou,
            style: AppTextStyles.h3Textstyle,
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                subjectCard(AppAssets.mathImage, AppColors.card1Color,
                    StringConstants.mathematics),
                subjectCard(AppAssets.ballImage, AppColors.card2Color,
                    StringConstants.geography),
                subjectCard(AppAssets.mathImage, AppColors.card3Color,
                    StringConstants.science),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            StringConstants.yourSchedule,
            style: AppTextStyles.h1Textstyle,
          ),
          Text(
            StringConstants.nextLessons,
            style: AppTextStyles.h3Textstyle,
          ),
          nextLessonCard(
              _height,
              _width,
              AppColors.lightGreenColor,
              StringConstants.biology,
              StringConstants.chapter1,
              StringConstants.julieWatson,
              AppAssets.avatar2Image),
          nextLessonCard(
              _height,
              _width,
              AppColors.card2Color,
              StringConstants.science,
              StringConstants.chapter3,
              StringConstants.brooklynWilliamson,
              AppAssets.avatar1Image),
        ],
      ),
    );
  }

//next lesson card
  Padding nextLessonCard(double _height, double _width, Color color,
      String subname, String lesson, String teacherName, String imgsrc) {
    return Padding(
      padding: const EdgeInsets.only(right: 28.0, top: 16),
      child: Card(
        child: Container(
          height: _height * 0.3,
          width: _width,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  subname,
                  style: AppTextStyles.biologyTextstyle,
                ),
                subtitle: Text(
                  lesson,
                  style: AppTextStyles.chapter1Textstyle,
                ),
                trailing: ImageIcon(
                  AssetImage(AppAssets.twodotImage),
                  color: AppColors.primaryColor,
                  size: 24,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                title: Text(
                  StringConstants.room,
                  style: AppTextStyles.chapter1Textstyle,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(imgsrc),
                ),
                title: Text(
                  teacherName,
                  style: AppTextStyles.teacherNameTextstyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// subjects card
  Card subjectCard(String iconpath, Color cardColor, String subName) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(16),
        height: 100,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ImageIcon(
                  AssetImage(iconpath),
                  color: AppColors.primaryColor,
                  size: 24,
                ),
                Spacer(),
                ImageIcon(
                  AssetImage(AppAssets.twodotImage),
                  color: AppColors.primaryColor,
                  size: 24,
                ),
              ],
            ),
            Spacer(),
            Text(
              subName,
              style: AppTextStyles.cardTextstyle,
            )
          ],
        ),
      ),
    );
  }
}
