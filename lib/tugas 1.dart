import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class KolaseGambar extends StatefulWidget {
  const KolaseGambar({Key? key}) : super(key: key);

  @override
  State<KolaseGambar> createState() => _KolaseGambarState();
}

class _KolaseGambarState extends State<KolaseGambar> {
  String? namakartu;
  final player = AudioPlayer();

  gantinama(String inputNama) {
    setState(() {
      namakartu = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Identifier'),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    gantinama('Burung');
                    await player.setAsset('aset/suara/suaraburung.mp3');
                    await player.play();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Image.asset(
                      'aset/gambar/burung.jpg',
                      width: 100,
                      height: 150,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    gantinama('Katakk');
                    await player.setAsset('aset/suara/suarakatak.mp3');
                    await player.play();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Image.asset(
                      'aset/gambar/katak.jpg',
                      width: 100,
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    gantinama('Kelincii');
                    await player.setAsset('aset/suara/suarakelinci.mp3');
                    await player.play();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Image.asset(
                      'aset/gambar/kelinci.jpg',
                      width: 100,
                      height: 150,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    gantinama('Kucing Manis');
                    await player.setAsset('aset/suara/suarakucing.mp3');
                    await player.play();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Image.asset(
                      'aset/gambar/kucing.jpg',
                      width: 100,
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    gantinama('Lebah');
                    await player.setAsset('aset/suara/suaralebah.mp3');
                    await player.play();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Image.asset(
                      'aset/gambar/lebah.jpg',
                      width: 100,
                      height: 150,
                    ),
                  ),
                ),
              ],
            ),
            Text(namakartu ?? 'Klik Salah Satu Gambar'),
          ],
        ),
      ),
    );
  }
}
