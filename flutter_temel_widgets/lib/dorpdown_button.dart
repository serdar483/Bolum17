import 'package:flutter/material.dart';

class DropdownButtonKullanimi extends StatefulWidget {
  DropdownButtonKullanimi({Key? key}) : super(key: key);

  @override
  _DropdownButtonKullanimiState createState() =>
      _DropdownButtonKullanimiState();
}

class _DropdownButtonKullanimiState extends State<DropdownButtonKullanimi> {
  String? _secilenSehir;
  List<String> _tumSehirler = [
    "Ankara",
    "Bursa",
    "İzmir",
    "İstanbul",
    "Karabük",
    "Bolu",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: const Text("Şehir Seçiniz"),
        icon: const Icon(Icons.arrow_back),
        items: _tumSehirler
            .map(
              (String oAnkiSehir) => DropdownMenuItem(
                child: Text(oAnkiSehir),
                value: oAnkiSehir,
              ),
            )
            .toList(),
        value: _secilenSehir, // bu olmazsa hangi değer seçildi görülemez
        onChanged: (String? yeniSecilenSehir) {
          setState(() {
            _secilenSehir = yeniSecilenSehir;
          });
        },
      ),
    );
  }
}
