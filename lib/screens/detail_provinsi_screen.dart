part of 'screens.dart';

class DetailProvinsiScreen extends StatelessWidget {
  final int index;
  final AsyncSnapshot item;
  DetailProvinsiScreen(this.index, this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Status per Provinsi'),
        backgroundColor: grRed,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Text(
            item.data[index].nama,
            style: header3,
          )),
          SizedBox(
            height: 30,
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
                          item.data[index].positif.toString(),
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
                          item.data[index].sembuh.toString(),
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
                          item.data[index].dirawat.toString(),
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
                          item.data[index].meninggal.toString(),
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
      ),
    );
  }
}
