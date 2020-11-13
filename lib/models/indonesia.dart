part of 'models.dart';

class Indonesia {
  String positif;
  String sembuh;
  String dirawat;
  String meninggal;

  Indonesia({this.positif, this.sembuh, this.meninggal, this.dirawat});

  factory Indonesia.fromJson(Map<String, dynamic> objek) {
    return Indonesia(
        positif: objek['positif'],
        sembuh: objek['sembuh'],
        meninggal: objek['meninggal'],
        dirawat: objek['dirawat']);
  }

  static Future<Indonesia> koneksi() async {
    String apiUrl = 'https://api.kawalcorona.com/indonesia/';

    var apiResult = await http.get(apiUrl);
    var jsonObjek = json.decode(apiResult.body);
    var dataIndonesia = (jsonObjek[0] as Map<String, dynamic>);

    return Indonesia.fromJson(dataIndonesia);
  }
}
