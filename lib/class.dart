class Peminjaman {
  String kode;
  String nama;
  String kodePeminjaman;
  String tgl;
  String kodeNasabah;
  String namaNasabah;
  int jumlahPinjaman;
  int lamaPinjaman;
  double bunga = 0.12;

  Peminjaman({
    required this.kode,
    required this.nama,
    required this.kodePeminjaman,
    required this.tgl,
    required this.kodeNasabah,
    required this.namaNasabah,
    required this.jumlahPinjaman,
    required this.lamaPinjaman,
  });

  double AngsuranPokok() {
    return jumlahPinjaman / lamaPinjaman;
  }

  double Bunga() {
    return bunga * jumlahPinjaman;
  }

  double AngsuranPerBulan() {
    return Bunga() + AngsuranPokok();
  }

  double TotalHutang() {
    return jumlahPinjaman + (Bunga() * lamaPinjaman);
  }
}
