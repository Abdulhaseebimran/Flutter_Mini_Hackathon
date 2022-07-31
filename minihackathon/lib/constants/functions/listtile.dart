// import 'package:flutter/material.dart';

// listtile(img, t1, t2, t3) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: ListTile(
//       leading: SizedBox(
//         width: 40,
//         height: 40,
//         child: Image(image: AssetImage(img)),
//       ),
//       title: Text(t1),
//       subtitle: Text(t2),
//       trailing: Text(t3),
//       tileColor: Colors.white,
//     ),
//   );
// }

import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop
({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(9.0)),
            ListTile(leading: Image(image: AssetImage("assets/images/shirts1.png",
                ),
                width: 100,
                height: 2000,
                ),
                tileColor: Colors.white,
                subtitle: Text("Sandy Williams"),
                trailing: Text("\$25.99", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                title: Text("Hawaian Shirt",
                style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),)
        ],
      ),
    );
  }
}