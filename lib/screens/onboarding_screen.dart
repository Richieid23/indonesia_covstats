part of 'screens.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  final PageController pageController = PageController(initialPage: 0);

  onPageChange(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            onPageChanged: onPageChange,
            itemCount: onBoardingList.length,
            itemBuilder: (context, i) => ItemOnBoarding(i),
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 20),
              width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children:
                            List.generate(onBoardingList.length, (int index) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            height: 12,
                            width: 12,
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 30),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: (index == currentPage)
                                  ? Border.all(width: 1, color: grRed)
                                  : Border.all(width: 1, color: Colors.black),
                              color:
                                  (index == currentPage) ? grRed : Colors.white,
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      child: RaisedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 30,
                            )
                          ],
                        ),
                        onPressed: () {
                          if (currentPage == onBoardingList.length - 1) {
                            Get.off(HomeScreen());
                          } else {
                            pageController.nextPage(
                                duration: Duration(milliseconds: 800),
                                curve: Curves.easeInOutQuint);
                          }
                        },
                        padding: const EdgeInsets.all(10.0),
                        color: grRed,
                        splashColor: Colors.white,
                        shape: CircleBorder(),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ],
    ));
  }
}
