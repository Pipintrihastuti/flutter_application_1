import 'package:flutter/material.dart';
import 'package:flutter_application_1/kalkulator_screen.dart';
import 'package:flutter_application_1/nilai_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => KalkulatorScreen(),
                  ),
                );
              },
              child: Text('Kalkulator')),
          ElevatedButton(
            onPressed: () {},
            child: Text('chara anime'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => NilaiAkhirScreen(),
                ),
              );
            },
            child: Text('Nilai Akhir'),
          ),
        ],
      ),
    );
  }
}
