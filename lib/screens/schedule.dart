import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:schedule_management_platform/res/appassets.dart';
import 'package:schedule_management_platform/res/appcolors.dart';
import 'package:schedule_management_platform/res/stringconstent.dart';
import 'package:schedule_management_platform/res/textstyle.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topBarRow(),
              _tabSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Padding topBarRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 18),
      child: Row(
        children: [
          Text(
            "24",
            style: AppTextStyles.dateh1Textstyle,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wed",
                style: AppTextStyles.scheduleh3Textstyle,
              ),
              Text(
                "Jan 2020",
                style: AppTextStyles.scheduleh3Textstyle,
              )
            ],
          ),
          Spacer(),
          Container(
            height: 40,
            width: 80,
            decoration: BoxDecoration(
                color: AppColors.lightGreenColor.withOpacity(0.10),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                "Today",
                style: AppTextStyles.todayh2Textstyle,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.scheduleColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32))),
      child: DefaultTabController(
        length: 7,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.red,
                    tabs: [
                      dates("S", 21),
                      dates("M", 22),
                      dates("T", 23),
                      dates("W", 24),
                      dates("T", 25),
                      dates("F", 26),
                      dates("S", 27)
                    ]),
              ),
              Container(
                //Add this to give height
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        children: [
                          timeCourseRow(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              timeColunm(StringConstants.time11,
                                  StringConstants.time12),
                              SizedBox(
                                width: 36,
                              ),
                              scheduleCard(
                                  StringConstants.biology,
                                  StringConstants.chapter1,
                                  StringConstants.room,
                                  StringConstants.brooklynWilliamson,
                                  AppColors.lightGreenColor,
                                  AppAssets.avatar1Image),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              timeColunm(StringConstants.time21,
                                  StringConstants.time22),
                              SizedBox(
                                width: 36,
                              ),
                              scheduleCard(
                                  StringConstants.biology,
                                  StringConstants.chapter1,
                                  StringConstants.room,
                                  StringConstants.brooklynWilliamson,
                                  AppColors.h3textColor,
                                  AppAssets.avatar2Image),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              timeColunm(StringConstants.time31,
                                  StringConstants.time32),
                              SizedBox(
                                width: 36,
                              ),
                              scheduleCard(
                                  StringConstants.biology,
                                  StringConstants.chapter1,
                                  StringConstants.room,
                                  StringConstants.brooklynWilliamson,
                                  AppColors.h3textColor,
                                  AppAssets.avatar3Image),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Text("Blank"),
                  ),
                  Container(
                    child: Text("Blank"),
                  ),
                  Container(
                    child: Text("Blank"),
                  ),
                  Container(
                    child: Text("Blank"),
                  ),
                  Container(
                    child: Text("Blank"),
                  ),
                  Container(
                    child: Text("Blank"),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

//time Course row under tab bar view
  Row timeCourseRow() {
    return Row(
      children: [
        Text(
          "Time",
          style: AppTextStyles.scheduleh3Textstyle,
        ),
        SizedBox(
          width: 36,
        ),
        Text(
          "Course",
          style: AppTextStyles.scheduleh3Textstyle,
        ),
        Spacer(),
        Icon(
          Icons.format_line_spacing_outlined,
          color: AppColors.h3textColor,
        ),
        SizedBox(
          width: 18,
        )
      ],
    );
  }

// time column under tab bar view
  Column timeColunm(String time1, String time2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          time1,
          style: AppTextStyles.timeh2Textstyle,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          time2,
          style: AppTextStyles.scheduleh3Textstyle,
        ),
      ],
    );
  }

// schedule card
  Expanded scheduleCard(String subName, String lesson, String roomNo,
      String teacherName, Color color, String assetPath) {
    return Expanded(
      child: Card(
        child: Container(
          height: 190,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.down,
            children: [
              ListTile(
                title: Text(
                  subName,
                  style: AppTextStyles.scheduleCardh1Textstyle,
                ),
                subtitle: Text(
                  lesson,
                  style: AppTextStyles.scheduleCardh2Textstyle,
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
                  size: 26,
                  color: Colors.white,
                ),
                title: Text(
                  roomNo,
                  style: AppTextStyles.scheduleCardh2Textstyle,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  maxRadius: 16,
                  backgroundImage: AssetImage(assetPath),
                ),
                title: Text(
                  teacherName,
                  style: AppTextStyles.scheduleCardh2Textstyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// dates list for tabbar view
  Column dates(String day, int date) {
    return Column(
      children: [
        Text(
          day,
          style: AppTextStyles.scheduleh3Textstyle,
        ),
        Text(
          date.toString(),
          style: AppTextStyles.timeh2Textstyle,
        )
      ],
    );
  }
}
