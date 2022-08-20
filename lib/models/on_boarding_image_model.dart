

class OnBoardingImageModel
{
  final String? imageUrl;
  final String? title;
  final String? desciption;

  OnBoardingImageModel(this.imageUrl,this.title,this.desciption
  );
}

List<OnBoardingImageModel> images = [
  OnBoardingImageModel("assets/images/on_board_first.png",
  "Boost Productivity","Will help you boost your productivity on a different level"
  ),
  OnBoardingImageModel("assets/images/on_board_second.png",
  "Work Seamlessly","Get your work done seamlessly without interruption"
  ),
  OnBoardingImageModel("assets/images/on_board_third.png",
  "Achieve Higher Goals","By boosting your productivity we help you achieve higher goals"
  )
];