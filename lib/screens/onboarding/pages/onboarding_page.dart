import 'package:borrow4less/components/Custom_Buttons/custom_button.dart';
import 'package:borrow4less/constants/global_variables.dart';
import 'package:borrow4less/screens/onboarding/models/onboardscreen.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(left: 8),
      duration: const Duration(milliseconds: 400),
      height: 8,
      width: currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
        color:
            currentPage == index ? GlobalVariables.primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(8),
        shape: BoxShape.rectangle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: GlobalVariables.screenHeight(context) * 0.15,
          ),
          SizedBox(
            height: 400,
            child: PageView.builder(
              itemCount: onBoardingContent.length,
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Image.asset(
                      onBoardingContent[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: GlobalVariables.screenHeight(context) * 0.03,
                  ),
                  Text(
                    onBoardingContent[index].title,
                    textAlign: TextAlign.center,
                    style: GlobalVariables.paragraph1.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: GlobalVariables.textColor,
                    ),
                  ),
                  SizedBox(
                    height: GlobalVariables.screenHeight(context) * 0.03,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        onBoardingContent[index].content,
                        textAlign: TextAlign.center,
                        style: GlobalVariables.paragraph1.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: GlobalVariables.textColor,
                        ),
                        maxLines: 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              currentPage == onBoardingContent.length
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            onBoardingContent.length,
                            (index) => AnimatedContainer(
                              margin: const EdgeInsets.only(
                                left: 8,
                              ),
                              duration: const Duration(
                                milliseconds: 400,
                              ),
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            onBoardingContent.length,
                            (
                              index,
                            ) =>
                                dotIndicator(
                              index,
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
          SizedBox(
            height: GlobalVariables.screenHeight(context) * 0.1,
          ),
          Flexible(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAppButton(
                    onpressed: () {},
                    buttonlabel: 'CREATE YOUR ACCOUNT',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomAppButton(
                    buttoncolor: Colors.white,
                    textcolor: GlobalVariables.textColor,
                    bordersidecolor: const Color(0xff999999),
                    onpressed: () {},
                    buttonlabel: 'LOG INTO YOUR ACCOUNT',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
