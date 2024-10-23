import 'package:flutter/material.dart';
import 'package:uts_2301081006_b/InputPage.dart';
import 'package:uts_2301081006_b/class.dart';

void main() {
  runApp(PeminjamanApp());
}

class PeminjamanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peminjaman',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peminjaman"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Menu Pilihan",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => InputPage()),
                );
              },
              leading: Icon(Icons.input),
              title: Text("Input Data"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Ini adalah halaman utama'),
      ),
    );
  }
}
