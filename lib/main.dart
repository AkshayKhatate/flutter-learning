import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(
    appBar: AppBar(
      title: Text("I am Rich"),
      backgroundColor: Colors.blueGrey,
    ),
    backgroundColor: Colors.cyan,
    body: Center(
      child: Image(
        // image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqgnjcl2Qv4W7YBSxXONSBVaWR1qulLzdKN39v52yVrw&s=10'),
        image: AssetImage('images/diamond.jpg'),

      ),
    ),
  )
  ),
  );
}

// void main() {
//   runApp(MaterialApp(home: Center(child: Text('Hello World!'),
//   ),
//   ),
//   );
// }
