// ignore_for_file: public_member_api_docs, sort_constructors_first
class OnBoarding {
  String title;
  String content;
  String image;
  OnBoarding({
    required this.title,
    required this.content,
    required this.image,
  });
}

List<OnBoarding> onBoardingContent = [
  OnBoarding(
    title: 'Invest your money',
    content:
        'Get access to risk free investments that will multiply your income and pay high returns in few months',
    image: 'assets/images/onboard1.png',
  ),
  OnBoarding(
    title: 'Borrow money with ease',
    content:
        'Borrow money with ease for your multiple purposes and pay back at the appropriate time without stress',
    image: 'assets/images/onboard2.png',
  ),
  OnBoarding(
    title: 'Withdraw/Deposit money',
    content:
        'With just a click, you can withdraw or deposit your funds at any point in time  without stress',
    image: 'assets/images/onboard3.png',
  ),
];
