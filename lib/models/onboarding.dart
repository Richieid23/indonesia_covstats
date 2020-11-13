part of 'models.dart';

class OnBoarding {
  final String imageUrl;
  final String title;
  final String description;

  OnBoarding({
    this.imageUrl,
    this.title,
    this.description,
  });
}

final onBoardingList = [
  OnBoarding(
    imageUrl: 'images/onboarding1.png',
    title: 'Demam',
    description:
        'Tingkat keparahan gejala COVID-19 dapat berkisar dari sangat ringan hingga parah. Beberapa orang tidak memiliki gejala. Orang yang lebih tua atau memiliki kondisi medis kronis.',
  ),
  OnBoarding(
    imageUrl: 'images/onboarding2.png',
    title: 'Batuk',
    description:
        'Seperti penyakit jantung atau paru-paru atau diabetis, mungkin berisiko lebih tinggi terkena penyakit serius. Ini serupa dengan apa yang terlihat pada penyakit pernapasan lainnya, seperti influenza.',
  ),
  OnBoarding(
    imageUrl: 'images/onboarding3.png',
    title: 'Sesak Nafas',
    description:
        'Hubungi dokter atau klinik Anda segera jika Anda memiliki gejala COVID-19, Anda pernah terpapar seseorang dengan COVID-19, atau Anda tinggal di atau telah melakukan perjalanan dari daerah dengan penyebaran komunitas COVID-19 yang sedang berlangsung.',
  ),
];
