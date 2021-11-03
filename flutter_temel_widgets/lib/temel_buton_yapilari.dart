import 'package:flutter/material.dart';

class TemelButonYapilari extends StatelessWidget {
  const TemelButonYapilari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint("Uzun basıldı");
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: const Text("Serdar"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              //backgroundColor: MaterialStateProperty.all(Colors.red),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Colors.orange;
                } else {
                  return null;
                }
              }),
              foregroundColor: MaterialStateProperty.all(Colors.yellow),
              overlayColor: MaterialStateProperty.all(
                Colors.yellow.withOpacity(0.5),
              )),
          icon: const Icon(Icons.add),
          label: const Text("Serdar"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.yellow,
          ),
          onPressed: () {},
          child: const Text("Serdar"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text("Serdar"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("Outlined"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              side: const BorderSide(color: Colors.green, width: 2)),
          icon: const Icon(Icons.add),
          label: const Text("Serdar"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.red, width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          icon: const Icon(Icons.add),
          label: const Text("Serdar"),
        ),
      ],
    );
  }
}
