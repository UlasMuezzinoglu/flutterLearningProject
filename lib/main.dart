import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    String title = "Rent A Car Project";
  int not = 65;
    var ogrenciler = ["Ulaş Müezzinoğlu","Engin Demiroğ","Kerem Varış","Murat Kurtboğan"];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: ogrenciler.length,
              itemBuilder: (BuildContext context, int index){
                return Text(ogrenciler[index]);
              })
          ),
          Center(
            // ignore: deprecated_member_use
            child: RaisedButton(
              child: Text("Sonucu Gör"),
              onLongPress: () {},
              onPressed: () {
                int puan = 70;
                String sonuc;
                if (puan >= 50) {
                  sonuc = "Geçti";
                } else if (puan >= 40) {
                  sonuc = "Bütünleme";
                } else {
                  sonuc = "Kaldı";
                }
                var alert = AlertDialog(
                  title: Text("Sınav Sonucu"),
                  content: Text(sonuc),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
            ),
          ),
        ],
      ),
    );
  }
}
