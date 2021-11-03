import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({Key? key}) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _deger = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kötü Adam Gülüşü"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MyNewTextWidget(),
            Text(
              _deger.toString(),
              //style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayacArttir();
          debugPrint("buton $_deger");
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void sayacArttir() {
    setState(() {
      _deger++;
    });
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Butona basılma miktarı",
      style: TextStyle(fontSize: 24),
    );
  }
}
