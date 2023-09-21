import 'package:flutter_application_10/components/item_name.dart';
import 'package:flutter_application_10/root/app_root.dart';
import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MyEvent> events = [
    MyEvent(
      title: "Watch youtube", date: "Jun 11, 2022", time: "1:47 PM - 3:47 PM ",

      //date:DateTime.now(),
    ),
    MyEvent(
      title: "Go to gym", date: "Jun 11, 2022", time: "3:46 PM - 6:00 PM",

      //date:DateTime.now(),
    ),
    MyEvent(
      title: "Go to football", date: "Jun 11, 2022",
      time: "9:45 PM - 11:45 PM ",

      // date:DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(174, 130, 65, 1),
          centerTitle: true,
          title: Text(
            "My Events",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            // IconButton(
            //     icon: Icon(AppRoot.themeNotifier.value == ThemeMode.light
            //         ? Icons.dark_mode
            //         : Icons.light_mode),
            //     onPressed: () {
            //       AppRoot.themeNotifier.value =
            //           AppRoot.themeNotifier.value == ThemeMode.light
            //               ? ThemeMode.dark
            //               : ThemeMode.light;
            //     })
          ]),
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _mainExample(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: 10,
                  // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 1),
                  child: Card(
                    color: Color.fromARGB(255, 218, 131, 105),
                    child: ListTile(
                      title: Text(
                        events[index].title!,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      // trailing: IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.more_horiz,
                      //       color: Colors.white,
                      //     )),

                      // trailing: Icon(Icons.more_horiz,color: Colors.white,),

                      subtitle: ListBody(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.date_range,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * .02,
                              ),
                              Text(
                                events[index].date!,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 87, 52, 1)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * .05,
                              ),
                              Text(
                                events[index].time!,
                                style: TextStyle(color: Color(0xFF753F02)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: events.length,
            ),
          ),
        ],
      ),
    );
  }

  EasyDateTimeLine _mainExample() {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {},
    );
  }
}

















// import 'package:flutter/material.dart';
// import 'package:flutter_application_10/components/item_name.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final text = MediaQuery.of(context).platformBrightness == Brightness.dark
//         ? "DarkTheme"
//         : "LightTheme";
//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         // backgroundColor: Colors.white,
//         actions: [
//           // ChangeThemeButtonWidget(),
//           Icon(Icons.search),

//           // SizedBox(
//           //   width: 15,
//           // ),
//           // Icon(Icons.light_mode),
//         ],
//         title: Text("My Events"),
//         centerTitle: true,
//       ),
//       drawer: Drawer(),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(left: 20, top: 20),
//                 child: Text(
//                   "June 11, 2022",
//                   style: TextStyle(fontSize: 18, color: Colors.grey),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 250, top: 20),
//                 child: Text(
//                   "Add Event",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 padding: EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: Colors.orange,
//                   borderRadius: BorderRadius.circular(13),
//                 ),
//               )
//             ],
//           ),
//           Container(
//             margin: EdgeInsets.only(right: 405),
//             child: Text(
//               "Today",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontSize: 20),
//             ),
//           ),
//           //  Container(child: ),
//           ItemName(
//             text: "Watch Youtube",
//           ),
//           ItemName(text: "Go to qym"),
//           ItemName(text: "Go to football")
//         ],
//       ),
//     ));
//   }
// }
