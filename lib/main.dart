import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() {
  runApp(
     // MyCard()
      MyApp()

  );
}


class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        // title: Text("I am Rich"),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(

        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("images/diamond.jpg"),
            ),
            Text('Akshay Khatate', style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontFamily: 'Pacifico'
            ),
            ),
            Text('MOBILE APP DEVELOPER', style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              fontFamily: 'SourceSans'
            ),
            ),
          SizedBox(
            width: 250.0,
            child: (
            Divider(height: 1.0, color: Colors.white,thickness: 2.0)
            ),

          )
          ,
            Card(
              color: Colors.white,
              margin: EdgeInsetsDirectional.symmetric(vertical:10.0, horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 20.0,
                    color: Colors.teal.shade900,
                  ),
                  title:  Text('+91 9967 56 8753',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSans'
                      )
                  ),
                )
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.white,
              margin: EdgeInsetsDirectional.symmetric(vertical:10.0, horizontal: 25.0),
              child: Row( children: [
                Icon(
                  Icons.email,
                  size: 20.0,
                  color: Colors.teal.shade900,
                ),SizedBox(
                  width: 10.0,
                ),
                Text('akshay@gmail.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSans'
                    )
                )
              ]
              ),
            )
          ],
        )
      ),
    )
    );
}
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        // title: Text("I am Rich"),
        backgroundColor: Colors.redAccent.shade700,
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
