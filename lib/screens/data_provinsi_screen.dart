part of 'screens.dart';

class DataProvinsiScreen extends StatefulWidget {
  @override
  _DataProvinsiScreenState createState() => _DataProvinsiScreenState();
}

class _DataProvinsiScreenState extends State<DataProvinsiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Report per Provinsi'),
        backgroundColor: grRed,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: FutureBuilder(
                  future: Provinsi.koneksi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, i) => GestureDetector(
                          onTap: () {
                            Get.to(DetailProvinsiScreen(i, snapshot));
                          },
                          child: ItemProvinsi(i, snapshot),
                        ),
                      );
                    } else {
                      return Center(child: Text('Load Data'));
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
