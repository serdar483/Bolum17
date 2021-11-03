import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/dorpdown_button.dart';
import 'package:flutter_temel_widgets/popup_kullanimi.dart';
//import 'package:flutter_temel_widgets/image_widgets.dart';
import 'package:flutter_temel_widgets/temel_buton_yapilari.dart';

main() {
  debugPrint("main çaıştı");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors
                .blue), //tüm butonlara tek tek atamak yerine temek olarak burada ayarlanabilir
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //home: const MyCounterPage(), ancak her seferinde scaffold tanımlanmamak için scaffold tanımlı oluşturulacak
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Şimdilik"),
          actions: [PopupKullanimi()],
        ),
        //body: const ImageOrnekleri(),
        //body: const TemelButonYapilari(),
        //body: DropdownButtonKullanimi(),
        body: PopupKullanimi(),
      ),
    );
  }
}
