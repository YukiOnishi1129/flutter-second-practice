import 'package:flutter/material.dart';
import 'package:hello/TestPage1.dart';
import 'package:hello/TestPage2.dart';
import 'package:hello/TestPage3.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        routes: {
          "/test1": (BuildContext context) => TestPage1(),
          "/test2": (BuildContext context) => TestPage2(),
          "/test3": (BuildContext context) => TestPage3(),
        });
  }
}

// StatefulWidget: 状態が変わって画面も変更される場合これを継承
// StatelessWidget: 静的ページの場合はこれを継承(基本的にはこれは使わない。)
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TestPage1を呼び出し
    return Scaffold(body: TestPage1());
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   String _type = "偶数";

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//       // if (_counter % 2 == 0) {
//       //   _type = "偶数";
//       // } else {
//       //   _type = "奇数";
//       // }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title)),
//       // appBar: AppBar(
//       //     title: Row(
//       //   children: [Icon(Icons.create), Text('初めてのタイトル')],
//       // )),
//       // Drawer: 画面スワイプ
//       // drawer: Drawer(child: Center(child: Text("Drawer"))),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               key: Key('counter'),
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             // if分岐
//             // if (_counter % 2 == 0)
//             //   Text('偶数です', style: TextStyle(fontSize: 20, color: Colors.red)),
//             // if (_counter % 2 == 1)
//             //   Text('奇数です', style: TextStyle(fontSize: 20, color: Colors.red)),
//             // IconButton(
//             //     onPressed: () async {
//             //       String url = Uri.encodeFull("https://www.google.co.jp");
//             //       // String _url = "https://www.google.co.jp";
//             //       try {
//             //         if (await canLaunch(url)) {
//             //           await launch(url);
//             //         }
//             //       } catch (e) {
//             //         print(e.toString());
//             //       }
//             //     },
//             //     icon: Icon(Icons.open_in_browser))
//           ],
//         ),
//       ),
//       // body: Text("初めてのテキスト")
//       // body: Column(
//       //   // Column: 縦に並べるWidget
//       //   children: [
//       //     Text("初めてのテキスト"),
//       //     Text("2番目のテキスト"),
//       //     /**
//       //      * TextButton
//       //      * onPressed: ボタンを押された時の処理
//       //      * child: 1つだけ子要素を持つプロパティ
//       //      */
//       //     TextButton(
//       //         onPressed: () => {print("ボタンが押されたよ")}, child: Text("更新")),
//       //     Row(
//       //       /**
//       //        * mainAxisAlignment: 列の要素を指定する
//       //        * MainAxisAlignment.spaceAround: 列の要素を等間隔で指定するプロパティ
//       //        */
//       //       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       //       children: [
//       //         Icon(
//       //           Icons.favorite,
//       //           color: Colors.pink,
//       //           size: 24.0,
//       //         ),
//       //         Icon(
//       //           Icons.audiotrack,
//       //           color: Colors.green,
//       //           size: 30.0,
//       //         ),
//       //         Icon(
//       //           Icons.beach_access,
//       //           color: Colors.blue,
//       //           size: 36.0,
//       //         ),
//       //       ],
//       //     )
//       //   ],
//       // )
//       floatingActionButton: FloatingActionButton(
//         key: Key('increment'),
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
