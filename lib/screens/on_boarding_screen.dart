import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:on_boarding_app/app_config/app_config.dart';
import 'package:on_boarding_app/constants/color_constants.dart';
import '../models/on_boarding_image_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  CarouselController? _controller;
  int? currentIndex;
  List<Widget>? imageSliders;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  init() {
    currentIndex = 0;
    imageSliders = [];
    _controller = CarouselController();
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: ColorConstants.backgroundColor,
        body: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Stack(
      children: [
        Positioned.fill(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                   SizedBox(
                      height: AppConfig().rH(10),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.308, left: 12.82, right: 12.82),
                    child: buildCarousel(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
      //),
    );
  }

  Widget buildCarousel() {
    return Column(
      children: [
        CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                height: AppConfig().rH(100),
                autoPlay: false,
                aspectRatio: 2.0,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                onPageChanged: (index, r) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
            items: buildImageSlider()),
         SizedBox(
          height: AppConfig().rH(10),
        )
      ],
    );
  }

  buildImageSlider() {
    return imageSliders = images
        .map(
          (item) => Column(
            children: [
              Container(
                height: AppConfig().rH(50),
                  color: ColorConstants.backgroundColor,
                  child: Image.asset(
                    item.imageUrl!,
                  )),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(item.title!,
                    textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w600,
                                fontSize: 26,
                                color: Colors.white)),
                     SizedBox(
                      height: AppConfig().rH(3),
                    ),
                    Text(item.desciption!,
                    textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Colors.white)),
                  ],
                ),
              ),
             SizedBox(
                height: AppConfig().rH(5),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: ColorConstants.buttonColor,
                      padding:
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 30)),
                  onPressed: () {
                    _controller!.animateToPage(currentIndex! + 1);
                  },
                  child: Text(
                      (currentIndex == 0)
                          ? "Next"
                          : (currentIndex == 1)
                              ? "Next"
                              : "Get Started",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white))),
             SizedBox(
                height: AppConfig().rH(5),
              ),
              DotsIndicator(
                dotsCount: 3,
                position: currentIndex!.toDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(24.0, 9.0),
                  activeColor: Colors.white,
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              )
            ],
          ),
        )
        .toList();
  }
}
