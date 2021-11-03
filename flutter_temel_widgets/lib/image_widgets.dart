import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _img1 =
        "https://upload.wikimedia.org/wikipedia/tr/d/d7/Venom_Film_Afişi.jpg";
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Image.asset(
                      "assets/images/robin.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: Image.asset(
                      "assets/images/venom.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: CircleAvatar(
                        /*child: Text(
                      "S",
                      style: Theme.of(context).textTheme.headline1,
                                      ),*/
                        backgroundImage: NetworkImage(
                            _img1), // Imageprovider beklediği için NetworkImage ya da Asset Image verilmeli
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          FadeInImage.assetNetwork(
            height: 200,
            fit: BoxFit.cover,
            placeholder: 'assets/images/original.gif',
            image: "https://images.alphacoders.com/108/1089857.jpg",
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Placeholder(
                color: Colors.blue,
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
