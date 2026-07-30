import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        // title: Text("I am Rich"),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
       child:Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             color: Colors.red,
             width: 100.0),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 color: Colors.yellow,
                 height: 100.0,
                 width: 100.0,
               ),
               Container(
                 color: Colors.green,
                 height: 100.0,
                 width: 100.0,
               )
             ],
           ),
           Container(
             color:Colors.blue,
             width:100.0)
         ],
       ),
      ),
    )
    );
  }
}


// void main() {
//   runApp(MaterialApp(home: Scaffold(
//     appBar: AppBar(
//       title: Text("I am Rich"),
//       backgroundColor: Colors.blueGrey,
//     ),
//     backgroundColor: Colors.cyan,
//     body: Center(
//       child: Image(
//         // image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqgnjcl2Qv4W7YBSxXONSBVaWR1qulLzdKN39v52yVrw&s=10'),
//         image: AssetImage('images/diamond.jpg'),
//
//       ),
//     ),
//   )
//   ),
//   );
// }

// void main() {
//   runApp(MaterialApp(home: Center(child: Text('Hello World!'),
//   ),
//   ),
//   );
// }
