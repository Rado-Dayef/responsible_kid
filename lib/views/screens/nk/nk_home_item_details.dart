import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_colors.dart';
import 'package:responsible_kid/constants/app_strings.dart';
import 'package:responsible_kid/controllers/nk/nk_home_item_details_controller.dart';
import 'package:responsible_kid/views/widgets/gap_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NKHomeItemDetailsScreen extends StatefulWidget {
  const NKHomeItemDetailsScreen({super.key});

  @override
  State<NKHomeItemDetailsScreen> createState() => _NKHomeItemDetailsScreenState();
}

class _NKHomeItemDetailsScreenState extends State<NKHomeItemDetailsScreen> {
  NKHomeItemDetailsController controller = Get.put(NKHomeItemDetailsController());
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;
  late String vidID;

  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  final bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: controller.args[AppStrings.vidIDText],
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
        showLiveFullscreenButton: false,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.sp),
                            child: YoutubePlayer(
                              controller: _controller,
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: AppColors.darkBlue,
                              progressColors: const ProgressBarColors(
                                playedColor: AppColors.darkBlue,
                                handleColor: AppColors.lightBlue,
                              ),
                              onReady: () {
                                _controller.addListener(listener);
                              },
                            ),
                          ),
                          Divider(
                            indent: 25.sp,
                            endIndent: 25.sp,
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
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontSize: 18.sp,
                            ),
                          ),
                          GapWidget(20.sp),
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
                          GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 35, crossAxisCount: 2),
                            children: [
                              Text(
                                "1. ${controller.args[AppStrings.task1Text]}",
                                style: TextStyle(
                                  color: AppColors.darkBlue,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Text(
                                "2. ${controller.args[AppStrings.task2Text]}",
                                style: TextStyle(
                                  color: AppColors.darkBlue,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Text(
                                "3. ${controller.args[AppStrings.task3Text]}",
                                style: TextStyle(
                                  color: AppColors.darkBlue,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Text(
                                "4. ${controller.args[AppStrings.task4Text]}",
                                style: TextStyle(
                                  color: AppColors.darkBlue,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
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
