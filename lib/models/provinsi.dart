part of 'models.dart';

class Provinsi {
  String nama;
  int positif;
  int sembuh;
  int meningal;
  int dirawat;

  Provinsi({this.nama, this.positif, this.sembuh, this.meningal, this.dirawat});

  factory Provinsi.fromJson(Map<String, dynamic> objek) {
    return Provinsi(
        nama: objek['key'],
        positif: objek['jumlah_kasus'],
        sembuh: objek['jumlah_sembuh'],
        meningal: objek['jumlah_meninggal'],
        dirawat: objek['jumlah_dirawat']);
  }

  static Future<List<Provinsi>> koneksi() async {
    String apiUrl = 'https://data.covid19.go.id/public/api/prov.json';

    var apiResult = await http.get(apiUrl);
    var jsonObjek = json.decode(apiResult.body);
    var dataIndonesia = (jsonObjek as Map<String, dynamic>)['list_data'];

    List<Provinsi> provinsi = [];
    for (var item in dataIndonesia) {
      provinsi.add(Provinsi.fromJson(item));
    }

    return provinsi;
  }
}
