// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       color: Colors.purple,
// //       debugShowCheckedModeBanner: false,
// //       home: HomeCreen(
// //       ),
// //     );
// //   }
// // }
// //
// // class HomeCreen extends StatelessWidget {
// //   const HomeCreen({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey,
// //       appBar: AppBar(
// //
// //         backgroundColor: Colors.blue,
// //         title: Text(
// //           "App Bar",
// //           style: TextStyle(
// //             fontSize: 24,
// //           ),
// //         ),
// //       ),
// //       body: Center(
// //
// //         child: Column(
// //           // crossAxisAlignment: CrossAxisAlignment.center,
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             ElevatedButton(
// //               onPressed: () {
// //                 showDialog(context: context, builder: (dialogContext){
// //                   return AlertDialog(
// //                     title: Text("men dialogman"),
// //                     content: Text("meni yoqotmaguncha boshqa dialoglar bilan aloqa qilaolmaysiz"),
// //                     actions: [
// //                       TextButton(onPressed: (){
// //                         Navigator.of(context).pop();
// //                       }, child: Text("ok"))
// //                     ],
// //                   );
// //                 });
// //               },
// //               child: Text("elevated button"),
// //             ),
// //             OutlinedButton(
// //               onPressed: () {},
// //               child: Text("Outlined button"),
// //             ),
// //             TextButton(
// //               onPressed: () {},
// //               child: Text("text button"),
// //             ),
// //             IconButton(
// //               onPressed: () {},
// //               icon: Icon(Icons.add),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// void main() {
//   runApp(MyCupertinoApp());
// }
//
// class MyCupertinoApp extends StatelessWidget {
//   const MyCupertinoApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       home: CupertinoTabScaffold(
//         tabBar: CupertinoTabBar(
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.settings), label: "settings"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.accessibility), label: "accessibility"),
//             BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.history), label: "history"),
//           ],
//         ),
//         tabBuilder: (BuildContext context, int index) {
//           if (index == 0) {
//             return CupertinoPageScaffold(
//                 child: Center(
//                     child: Expanded(
//               child: Text(
//                 "brinchi ekran",
//                 textAlign: TextAlign.end,
//                 maxLines: 1,
//                 style: TextStyle(
//                   color: Colors.deepPurple,
//                   fontSize: 28,
//                   fontWeight: FontWeight.w700,
//                   fontStyle: FontStyle.italic,
//                   letterSpacing: 5.0,
//                 ),
//               ),
//             )));
//           } else if (index == 1) {
//             return CupertinoPageScaffold(
//                 child: Center(
//                     child: Text(
//               "ikkinchi ekran",
//               textAlign: TextAlign.end,
//               maxLines: 1,
//               style: TextStyle(
//                 color: Colors.deepPurple,
//                 fontSize: 28,
//                 fontWeight: FontWeight.w700,
//                 fontStyle: FontStyle.italic,
//                 letterSpacing: 5.0,
//               ),
//             )));
//           } else if (index == 2) {
//             return CupertinoPageScaffold(
//                 child: Center(
//                     child: Text(
//               "uchinchi ekran",
//               textAlign: TextAlign.end,
//               maxLines: 1,
//               style: TextStyle(
//                 color: Colors.green,
//                 fontSize: 36,
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: 6.0,
//               ),
//             )));
//           } else if (index == 3) {
//             return CupertinoPageScaffold(
//                 child: Center(
//                     child: Text(
//               "tortinchi ekran",
//               textAlign: TextAlign.end,
//               maxLines: 1,
//               style: TextStyle(
//                 color: Colors.blueGrey,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w300,
//                 fontStyle: FontStyle.italic,
//                 letterSpacing: 7.0,
//               ),
//             )));
//           } else {
//             return CupertinoPageScaffold(
//               child: Center(
//                 child: Text(
//                   "beshinchi ekran",
//                   textAlign: TextAlign.end,
//                   maxLines: 2,
//                   style: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 28,
//                     fontWeight: FontWeight.w500,
//                     fontStyle: FontStyle.italic,
//                     letterSpacing: 5.0,
//                   ),
//                 ),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
//
// import 'list_viev.dart';
//
// void main(){
//   runApp(App());
// }
//
//
// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ListWiewExample(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DraggableList(),
    );
  }
}

class DraggableList extends StatefulWidget {
  const DraggableList({
    super.key,
  });

  @override
  State<DraggableList> createState() => _DraggableListState();
}

class _DraggableListState extends State<DraggableList> {
  var list = [Colors.red, Colors.blue, Colors.green];
  var hasListItemAccepted = [false, false, false];

  var activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Gap(50),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return LongPressDraggable<Color>(
                  data: list[index],
                  feedback: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(color: list[index]),
                  ),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(color: list[index]),
                  ),
                );
              },
              separatorBuilder: (_, __) => const Gap(12),
              itemCount: list.length,
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return DragTarget<Color>(
                  onAccept: (color) {
                    if (color == list[index]) {
                      setState(() {
                        print("Came here");
                        print(hasListItemAccepted[index]);
                        if (hasListItemAccepted[index]) {
                          hasListItemAccepted[index] = false;
                        } else {
                          hasListItemAccepted[index] = true;
                        }
                        activeIndex = -1;
                        print(hasListItemAccepted[index]);
                      });
                    }
                  },
                  onMove: (details) {
                    activeIndex = index;
                    setState(() {});
                  },
                  onAcceptWithDetails: (details) {
                    print("${details.offset}");
                  },
                  onLeave: (details) {
                    print("Working");
                    activeIndex = -1;
                    setState(() {});
                  },
                  builder: (_, candidateItems, rejectedItems) => Container(
                    width: 200,
                    height: 200,
                    color: activeIndex == index
                        ? list[index].withOpacity(.5)
                        : hasListItemAccepted[index]
                        ? list[index]
                        : Colors.white,
                    child: Center(
                      child: Text(getColorName(list[index])),
                    ),
                  ),
                );
              },
              separatorBuilder: (_, __) {
                return const Gap(12);
              },
              itemCount: list.length,
            ),
          ),
        ],
      ),
    );
  }

  String getColorName(Color color) {
    switch (color) {
      case Colors.red:
        return "Qizil";
      case Colors.blue:
        return "Ko'k";
      case Colors.green:
        return "Yashil";
      default:
    }

    return '';
  }
}
