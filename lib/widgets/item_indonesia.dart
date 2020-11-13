part of 'widgets.dart';

class ItemIndonesia extends StatelessWidget {
  final AsyncSnapshot item;
  ItemIndonesia(this.item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                height: 190,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          'Total Kasus',
                          style: inputPlaceholder,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image(
                            image: AssetImage('images/ic_arrowtrendred.png'),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        item.data.positif,
                        style: header3,
                      ),
                    ),
                    Image(image: AssetImage('images/chart1.png'))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Container(
                height: 190,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          'Sembuh',
                          style: inputPlaceholder,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image(
                            image: AssetImage('images/ic_arrowtrendgr.png'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        item.data.sembuh,
                        style: header3gr,
                      ),
                    ),
                    Image(image: AssetImage('images/chart2.png'))
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                height: 190,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          'Dirawat',
                          style: inputPlaceholder,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image(
                            image: AssetImage('images/ic_arrowtrendred.png'),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        item.data.dirawat,
                        style: header3,
                      ),
                    ),
                    Image(image: AssetImage('images/chart3.png'))
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Container(
                height: 190,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          'Meninggal',
                          style: inputPlaceholder,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image(
                            image: AssetImage('images/ic_arrowtrendred.png'),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        item.data.meninggal,
                        style: header3red,
                      ),
                    ),
                    Image(image: AssetImage('images/chart4.png'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
