part of 'widgets.dart';

class ItemOnBoarding extends StatelessWidget {
  final int index;
  ItemOnBoarding(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: double.infinity,
              height: 300,
              // color: Colors.pink,
              child: Image(
                image: AssetImage(onBoardingList[index].imageUrl),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                onBoardingList[index].title,
                style: header1,
              ),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              onBoardingList[index].description,
              style: body,
              textAlign: TextAlign.center,
            ),
          )),
        ]);
  }
}
