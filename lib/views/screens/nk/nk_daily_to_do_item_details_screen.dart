// import 'package:flutter/material.dart';
//
// class NKDailyToDoDetailsScreen extends StatelessWidget {
//   const NKDailyToDoDetailsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:responsible_kid/constants/app_colors.dart';
// import 'package:responsible_kid/controllers/nk_daily_to_do_item_details_controller.dart';
//
// class NKDailyToDoItemDetailsScreen extends StatelessWidget {
//   const NKDailyToDoItemDetailsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final SwitchController switchController = Get.put(SwitchController());
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Column(
//                   children: [
//                     TextDefault(text: 'Wake Up', size: 22),
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundColor: AppColors.darkBlue,
//                       child: Icon(Icons.bed),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Obx(
//                       () => Switch(
//                         activeColor: Colors.white,
//                         activeTrackColor: AppColors.darkBlue,
//                         inactiveThumbColor: AppColors.darkBlue,
//                         inactiveTrackColor: Colors.white,
//                         splashRadius: 0,
//                         trackOutlineWidth: MaterialStatePropertyAll(0),
//
//                         // boolean variable value
//                         value: switchController.forAndroid.value,
//                         onChanged: (value) => switchController.toggleSwitch(value),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     DefaultDivider(width: 150, color: AppColors.white),
//                   ],
//                 ),
//               ),
//               TextDefault(text: 'Description', size: 18),
//               DefaultDivider(width: 70, color: AppColors.white),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30),
//                 child: Center(
//                   child: Column(
//                     children: [
//                       Text('Encourage children to wake up at a consistent time each day to establish a healthy routine.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       DefaultDivider(width: 300, color: AppColors.white),
//                     ],
//                   ),
//                 ),
//               ),
//               TextDefault(text: 'Benefits', size: 18),
//               DefaultDivider(width: 70, color: AppColors.white),
//               Center(
//                 child: Column(
//                   children: [
//                     Align(
//                       child: TextDefault(text: '\“', size: 35),
//                     ),
//                     Text('Encourage children to wake upat a consistent time each day to establish a healthy routine.'),
//                     TextDefault(text: '\”', size: 35),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class TextDefault extends StatelessWidget {
//   String text;
//   double size;
//
//   TextDefault({super.key, required this.text, required this.size});
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(color: AppColors.white, fontSize: size),
//     );
//   }
// }
//
// class DefaultDivider extends StatelessWidget {
//   double width;
//   Color color;
//
//   DefaultDivider({super.key, required this.width, required this.color});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: color,
//       height: 1,
//       width: width,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_colors.dart';
import 'package:responsible_kid/constants/app_strings.dart';
import 'package:responsible_kid/controllers/nk/nk_daily_to_do_item_details_controller.dart';
import 'package:responsible_kid/views/widgets/gap_widget.dart';

class NKDailyToDoItemDetailsScreen extends GetWidget<NKDailyToDoItemDetailsController> {
  const NKDailyToDoItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.sp,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.darkBlue,
                  AppColors.lightBlue,
                ],
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.sp),
              ),
              child: Image.asset(
                AppStrings.homeBGAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              height: 690.h,
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: AppColors.white,
                            ),
                          ),
                          GapWidget(15.sp),
                          Text(
                            controller.args[AppStrings.titleText],
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 20.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                    GapWidget(10.sp),
                    Container(
                      height: 800.sp,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.sp),
                        ),
                      ),
                      child: ListView(
                        padding: EdgeInsets.all(10.sp),
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.darkBlue,
                            radius: 50.sp,
                            child: SizedBox(
                              height: 50.sp,
                              width: 50.sp,
                              child: Image.asset(
                                controller.args[AppStrings.lImageText],
                              ),
                            ),
                          ),
                          GapWidget(10.sp),
                          Switch(
                            activeColor: Colors.white,
                            activeTrackColor: AppColors.darkBlue,
                            inactiveThumbColor: AppColors.darkBlue,
                            inactiveTrackColor: Colors.white,
                            splashRadius: 0,
                            trackOutlineWidth: const MaterialStatePropertyAll(0),
                            value: controller.args[AppStrings.isDoneText],
                            onChanged: (value) {},
                          ),
                          Divider(
                            indent: 100.sp,
                            endIndent: 100.sp,
                            height: 50.sp,
                            color: AppColors.darkBlue,
                          ),
                          Text(
                            AppStrings.descriptionText,
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(
                            height: 0,
                            color: AppColors.darkBlue,
                            endIndent: 250.sp,
                            thickness: 0.5.sp,
                          ),
                          GapWidget(10.sp),
                          Text(
                            controller.args[AppStrings.dataDescriptionText],
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontSize: 18.sp,
                            ),
                          ),
                          Divider(
                            indent: 100.sp,
                            endIndent: 100.sp,
                            height: 50.sp,
                            color: AppColors.darkBlue,
                          ),
                          Text(
                            AppStrings.yourTaskText,
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(
                            height: 0,
                            color: AppColors.darkBlue,
                            endIndent: 260.sp,
                            thickness: 0.5.sp,
                          ),
                          GapWidget(10.sp),
                          Text(
                            controller.args[AppStrings.dataBenefitsText],
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
