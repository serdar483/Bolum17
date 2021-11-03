import 'package:flutter/material.dart';

class PopupKullanimi extends StatefulWidget {
  PopupKullanimi({Key? key}) : super(key: key);

  @override
  _PopupKullanimiState createState() => _PopupKullanimiState();
}

class _PopupKullanimiState extends State<PopupKullanimi> {
  String _secilenSehir = "Ankara";
  List<String> renkler = ["Mavi", "Yeşil", "Kırmızı", "Sarı"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (String sehir) {
          print("Seçilen şehir :$sehir");
          setState(() {
            _secilenSehir = sehir;
          });
        },
        //icon: Icon(Icons.add), // child ile aynı anda kullanılamaz
        //child: Text(_secilenSehir),
        itemBuilder: (BuildContext context) {
          /*
          return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",
            ),
            PopupMenuItem(
              child: Text("İzmir"),
              value: "İzmir",
            ),
            PopupMenuItem(
              child: Text("Karabük"),
              value: "Karabük",
            ),
          ];*/
          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
