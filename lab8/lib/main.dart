// import "package:flutter/material.dart";
// void main() {
//   runApp(HomeScreen2());
// }
// class HomeScreen2 extends StatefulWidget {
//   const HomeScreen2({Key? key}) : super(key: key);
//   @override
//   State<HomeScreen2> createState() => _HomeScreen2State();
// }
// class _HomeScreen2State extends State<HomeScreen2> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Lab 8"),
//           centerTitle: true,
//           backgroundColor: Colors.blueAccent,
//         ),
//         body: ProfilePage(),
//       ),
//
//     );
//   }
// }
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
// class _ProfilePageState extends State<ProfilePage> {
//   num age = 19;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Flexible(
//                 child: Image(
//                   image: AssetImage("images/snap.jpg"),
//                   width: 200,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 50.0),
//           Container(
//             child: Text(
//               "Name",
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.blueAccent,
//               ),
//             ),
//           ),
//           SizedBox(height: 8.0),
//           Container(
//             child: Text(
//               "Vashishth Patel",
//               style: TextStyle(
//                 fontSize: 18.0,
//               ),
//             ),
//           ),
//           SizedBox(height: 24.0),
//           Row(
//             children: [
//               ElevatedButton(
//                 child: Text("---"),
//                 onPressed: () {
//                   setState(() {
//                     age -= 1;
//                   });
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blueAccent,
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
//                 child: Text(
//                   "Age",
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.blueAccent,
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 child: Icon(Icons.add),
//                 onPressed: () {
//                   setState(() {
//                     age += 1;
//                   });
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blueAccent,
//                 ),
//               )
//             ],
//           ),
//           SizedBox(height: 8.0),
//           Container(
//             child: Text(
//               age.toString(),
//               style: TextStyle(
//                 fontSize: 18.0,
//               ),
//             ),
//           ),
//           SizedBox(height: 24.0),
//           Row(
//             children: [
//               Icon(
//                 Icons.mail,
//                 color: Colors.blueAccent,
//               ),
//               Padding(
//                 padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
//                 child: Text(
//                   "vashishthchaudhary@gmail.com",
//                   style: TextStyle(
//                     fontSize: 18.0,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {
  // const QuoteCard({
  //   Key? key,
  // }) : super(key: key);
  final Quote quote;
  final VoidCallback delete;

  QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            TextButton.icon(
              /*
              our data doesn't exist inside this stateless widget class..
              data are in 'main.dart' file. ..
              */
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('Delete Quote'),
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black54,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
