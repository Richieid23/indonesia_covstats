part of 'screens.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Status Indonesia'),
        backgroundColor: grRed,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
                future: Indonesia.koneksi(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return new ItemIndonesia(snapshot);
                  } else {
                    return Container(
                        height: 320,
                        child: Center(child: Text('Load Data...')));
                  }
                }),
            Card(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Live Report per Provinsi",
                          style: boldDark18,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(DataProvinsiScreen());
                          },
                          child: Text(
                            "View All",
                            style: mediumDark8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    child: FutureBuilder(
                      future: Provinsi.koneksi(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, i) => GestureDetector(
                              onTap: () {
                                Get.to(DetailProvinsiScreen(i, snapshot));
                              },
                              child: ItemProvinsi(i, snapshot),
                            ),
                          );
                        } else {
                          return Center(child: Text('Load Data...'));
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
