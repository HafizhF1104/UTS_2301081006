import 'package:flutter/material.dart';
import 'package:uts_2301081006_b/class.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  TextEditingController kodeController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController kodePeminjamanController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  TextEditingController kodeNasabahController = TextEditingController();
  TextEditingController namaNasabahController = TextEditingController();
  TextEditingController jumlahPinjamanController = TextEditingController();
  TextEditingController lamaPinjamanController = TextEditingController();

  void submitData() {
    String kode = kodeController.text;
    String nama = namaController.text;
    String kodePeminjaman = kodePeminjamanController.text;
    String tgl = tglController.text;
    String kodeNasabah = kodeNasabahController.text;
    String namaNasabah = namaNasabahController.text;
    int jumlahPinjaman = int.tryParse(jumlahPinjamanController.text) ?? 0;
    int lamaPinjaman = int.tryParse(lamaPinjamanController.text) ?? 0;

    void submitData() {
      String kode = kodeController.text;
      String nama = namaController.text;
      String kodePeminjaman = kodePeminjamanController.text;
      String tgl = tglController.text;
      String kodeNasabah = kodeNasabahController.text;
      String namaNasabah = namaNasabahController.text;
      int jumlahPinjaman = int.tryParse(jumlahPinjamanController.text) ?? 0;
      int lamaPinjaman = int.tryParse(lamaPinjamanController.text) ?? 0;

      if (jumlahPinjaman > 0 &&
          lamaPinjaman > 0 &&
          nama.isNotEmpty &&
          kode.isNotEmpty) {
        Peminjaman peminjaman = Peminjaman(
          kode: kode,
          nama: nama,
          kodePeminjaman: kodePeminjaman,
          tgl: tgl,
          kodeNasabah: kodeNasabah,
          namaNasabah: namaNasabah,
          jumlahPinjaman: jumlahPinjaman,
          lamaPinjaman: lamaPinjaman,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Pastikan semua data telah diisi dengan benar')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Data Peminjaman"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: kodeController,
              decoration: InputDecoration(labelText: "Kode"),
            ),
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: kodePeminjamanController,
              decoration: InputDecoration(labelText: "Kode Peminjaman"),
            ),
            TextField(
              controller: tglController,
              decoration: InputDecoration(labelText: "Tanggal Peminjaman"),
            ),
            TextField(
              controller: kodeNasabahController,
              decoration: InputDecoration(labelText: "Kode Nasabah"),
            ),
            TextField(
              controller: namaNasabahController,
              decoration: InputDecoration(labelText: "Nama Nasabah"),
            ),
            TextField(
              controller: jumlahPinjamanController,
              decoration: InputDecoration(labelText: "Jumlah Pinjaman"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: lamaPinjamanController,
              decoration: InputDecoration(labelText: "Lama Pinjaman (bulan)"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: submitData,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
