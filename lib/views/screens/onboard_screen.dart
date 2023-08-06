import 'package:bank_kawe/shared/theme.dart';
import 'package:bank_kawe/views/screens/sign_in_screen.dart';
import 'package:bank_kawe/views/widgets/custom_filled_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> title = [
    "Grow Your\nFinancial Today",
    "Build From\nZero to Freedom",
    "Start Together",
  ];

  List<String> subTitle = [
    "Our system is helping you to\nachieve a better goal",
    "We provide tips for you so that\nyou can adapt easier",
    "We will guide you to where\nyou wanted it too",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/illustrations/img_onboard_1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/illustrations/img_onboard_2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/illustrations/img_onboard_3.png',
                  height: 331,
                ),
              ],
              carouselController: carouselController,
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            Container(
              width: 330,
              height: 300,
              margin: const EdgeInsets.symmetric(vertical: 24),
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 26),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    title[currentIndex],
                    textAlign: TextAlign.center,
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subTitle[currentIndex],
                    textAlign: TextAlign.center,
                    style: greyTextStyle.copyWith(
                      fontWeight: regular,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  currentIndex != 2
                      ? Row(
                          children: [
                            Container(
                              height: 12,
                              width: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 0
                                      ? lightBlue
                                      : circularIndicatorColor),
                            ),
                            Container(
                              height: 12,
                              width: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 1
                                      ? lightBlue
                                      : circularIndicatorColor),
                            ),
                            Container(
                              height: 12,
                              width: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 2
                                      ? lightBlue
                                      : circularIndicatorColor),
                            ),
                            const Spacer(),
                            CustomFilledButton(
                              text: "Continue",
                              width: 150,
                              height: 50,
                              onPressed: () {
                                carouselController.nextPage();
                              },
                            ),
                            // Container(
                            //   width: 150,
                            //   height: 50,
                            //   decoration: BoxDecoration(
                            //     color: purpleColor,
                            //     borderRadius: BorderRadius.circular(56),
                            //   ),
                            //   child: TextButton(
                            //     onPressed: () {
                            //       carouselController.nextPage();
                            //     },
                            //     child: Text(
                            //       "Continue",
                            //       style: whiteTextStyle,
                            //     ),
                            //   ),
                            // ),
                          ],
                        )
                      : Center(
                          child: Column(
                            children: [
                              Container(
                                width: 283,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: purpleColor,
                                  borderRadius: BorderRadius.circular(56),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/sign_up");
                                  },
                                  child: Text(
                                    "Get started",
                                    style: whiteTextStyle,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 24,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(0)),
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/sign_in");
                                    },
                                    child: Text(
                                      "Sign in",
                                      style: darkGreyTextStyle.copyWith(
                                          fontWeight: regular, fontSize: 16),
                                    )),
                              )
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
