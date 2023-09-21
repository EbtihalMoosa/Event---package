class MyEvent {
  String? title;
  String? date;
  String? time;

//DateTime? date;

  MyEvent({this.title, this.date, this.time});
}




// import 'package:flutter/material.dart';

// class ItemName extends StatelessWidget {
//   // const
//   ItemName({super.key, required this.text});

//   String text;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: 400,
//           height: 100,
//           margin: EdgeInsets.only(top: 15),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Colors.orange,
//                     Color.fromARGB(255, 238, 182, 121),
//                     Color.fromRGBO(224, 171, 90, 1)
//                   ])),
//           // alignment: Alignment.topLeft,
//           child: Text(
//             text,
//             style: TextStyle(color: Colors.white, fontSize: 16),
//           ),
//         ),
//         Row(
//           children: [Icon(Icons.date_range), Text("kh")],
//         ),
//         Row(
//           children: [Icon(Icons.skateboarding), Text("data")],
//         )
//       ],
//     );
//   }
// }
