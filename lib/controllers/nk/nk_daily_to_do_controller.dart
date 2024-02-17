import 'package:get/get.dart';
import 'package:responsible_kid/constants/app_strings.dart';

class NKDailyToDoController extends GetxController {
  List dailyToDoItemsDate = [
    {
      AppStrings.titleText: AppStrings.wakeUpEarlyText,
      AppStrings.imageText: AppStrings.wakeUpAsset,
      AppStrings.lImageText: AppStrings.lWakeUpAsset,
      AppStrings.dataDescriptionText: AppStrings.description1Text,
      AppStrings.dataBenefitsText: AppStrings.benefits1Text,
      AppStrings.isDoneText: true,
    },
    {
      AppStrings.titleText: AppStrings.makeTheBedText,
      AppStrings.imageText: AppStrings.makeTheBedAsset,
      AppStrings.lImageText: AppStrings.lMakeTheBedAsset,
      AppStrings.dataDescriptionText: AppStrings.description2Text,
      AppStrings.dataBenefitsText: AppStrings.benefits2Text,
      AppStrings.isDoneText: true,
    },
    {
      AppStrings.titleText: AppStrings.brushTeethText,
      AppStrings.imageText: AppStrings.brushTeethAsset,
      AppStrings.lImageText: AppStrings.lBrushTeethAsset,
      AppStrings.dataDescriptionText: AppStrings.description3Text,
      AppStrings.dataBenefitsText: AppStrings.benefits3Text,
      AppStrings.isDoneText: true,
    },
    {
      AppStrings.titleText: AppStrings.completeHomeworkText,
      AppStrings.imageText: AppStrings.completeHomeworkAsset,
      AppStrings.lImageText: AppStrings.lCompleteHomeworkAsset,
      AppStrings.dataDescriptionText: AppStrings.description4Text,
      AppStrings.dataBenefitsText: AppStrings.benefits4Text,
      AppStrings.isDoneText: true,
    },
    {
      AppStrings.titleText: AppStrings.outdoorPlayText,
      AppStrings.imageText: AppStrings.outdoorPlayAsset,
      AppStrings.lImageText: AppStrings.lOutdoorPlayAsset,
      AppStrings.dataDescriptionText: AppStrings.description5Text,
      AppStrings.dataBenefitsText: AppStrings.benefits5Text,
      AppStrings.isDoneText: false,
    },
    {
      AppStrings.titleText: AppStrings.readTwoPagesText,
      AppStrings.imageText: AppStrings.readTwoPagesAsset,
      AppStrings.lImageText: AppStrings.lReadTwoPagesAsset,
      AppStrings.dataDescriptionText: AppStrings.description6Text,
      AppStrings.dataBenefitsText: AppStrings.benefits6Text,
      AppStrings.isDoneText: false,
    },
    {
      AppStrings.titleText: AppStrings.helpWithChoresText,
      AppStrings.imageText: AppStrings.helpWithChoresAsset,
      AppStrings.lImageText: AppStrings.lHelpWithChoresAsset,
      AppStrings.dataDescriptionText: AppStrings.description7Text,
      AppStrings.dataBenefitsText: AppStrings.benefits7Text,
      AppStrings.isDoneText: false,
    },
    {
      AppStrings.titleText: AppStrings.familyTimeText,
      AppStrings.imageText: AppStrings.toDoFamilyTimeAsset,
      AppStrings.lImageText: AppStrings.lToDoFamilyTimeAsset,
      AppStrings.dataDescriptionText: AppStrings.description8Text,
      AppStrings.dataBenefitsText: AppStrings.benefits8Text,
      AppStrings.isDoneText: false,
    },
  ];
}
