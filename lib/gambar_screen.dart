import "package:flutter/material.dart";
import 'package:just_audio/just_audio.dart';

class Gambarscreen extends StatefulWidget {
  const Gambarscreen({super.key});

  @override
  State<Gambarscreen> createState() => _GambarscreenState();
}

class _GambarscreenState extends State<Gambarscreen> {
  String? namaHewan;
  final player = AudioPlayer();

  gantinama(String inputNama) {
    setState(() {
      namaHewan = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaHewan ?? 'Gambar Kosong'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: () async {
              print('Kucing');
              gantinama('Kucing Lucu');
              await player.setAsset('aset_media/suara/buatkucing.mp3');
              await player.play();
            },
            child: Card(
              child: Image.asset('aset_media/gambar/KUCING.jpg'),
            ),
          ),
          GestureDetector(
            onTap: () async {
              print('Kucing Manis');
              gantinama('Kucing Jelek');
              await player.setAsset('aset_media/suara/buatkucing.mp3');
              await player.play();
            },
            child: Card(
              child: Image.asset('aset_media/gambar/kucing1.jpg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Kucing sangat lucu');
              gantinama('Kucing Comil');
            },
            child: Card(
              child: Image.asset('aset_media/gambar/kucing2.jpg'),
            ),
          ),
          Card(
            child: Image.asset('aset_media/gambar/kucing3.jpg'),
          ),
          Card(
            child: Image.asset('aset_media/gambar/kucing4.jpg'),
          ),
        ],
      ),
    );
  }
}
