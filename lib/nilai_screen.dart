import 'package:flutter/material.dart';

class NilaiAkhirScreen extends StatefulWidget {
  const NilaiAkhirScreen({super.key});

  @override
  State<NilaiAkhirScreen> createState() => _NilaiAkhirScreenState();
}

class _NilaiAkhirScreenState extends State<NilaiAkhirScreen> {
  TextEditingController? inputNilaiTugas = TextEditingController();
  TextEditingController? inputNilaiUTS = TextEditingController();
  TextEditingController? inputNilaiUAS = TextEditingController();
  String? nilaiAkhirHuruf;
  double? nilaiRataRata;

  hitungNilai() {
    setState(() {
      int nilai1 = int.parse(inputNilaiTugas?.text ?? "0");
      int nilai2 = int.parse(inputNilaiUTS?.text ?? "0");
      int nilai3 = int.parse(inputNilaiUAS?.text ?? "0");
      nilaiRataRata = (nilai1 + nilai2 + nilai3) / 3;

      konversiHuruf(nilaiRataRata ?? 0);
    });
  }

  konversiHuruf(double nilai) {
    if (nilai >= 90 && nilai <= 100) {
      nilaiAkhirHuruf = "Nilai A";
    } else if (nilai >= 70 && nilai <= 89) {
      nilaiAkhirHuruf = "Nilai B";
    } else if (nilai >= 50 && nilai <= 69) {
      nilaiAkhirHuruf = "Nilai C";
    } else {
      nilaiAkhirHuruf = "Belum Lulus";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai Akhir'),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Text(nilaiAkhirHuruf ?? 'nilai akhir'),
          SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
              labelText: "masukkan nilai tugas",
              hintText: "nilai antara 0-100",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            controller: inputNilaiTugas,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "masukkan nilai uts",
              hintText: "nilai anatara 0-100",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: Icon(
                Icons.task,
              ),
              suffixIcon: Icon(
                Icons.check,
              ),
            ),
            controller: inputNilaiUTS,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "masukkan nilai uas",
              hintText: "nilai antara 0-100",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            controller: inputNilaiUAS,
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              hitungNilai();
            },
            child: Text('Hitung Nilai'),
          ),
          Text('Nilai Rata-Rata:'),
          Text(nilaiRataRata?.toString() ?? '0'),
        ],
      ),
    );
  }
}
