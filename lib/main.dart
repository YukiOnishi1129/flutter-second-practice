import 'package:flutter/material.dart';

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
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          // Column: 縦に並べるWidget
          children: [
            Text("初めてのテキスト"),
            Text("2番目のテキスト"),
            /**
             * TextButton
             * onPressed: ボタンを押された時の処理
             * child: 1つだけ子要素を持つプロパティ
             */
            TextButton(
                onPressed: () => {print("ボタンが押されたよ")}, child: Text("更新")),
            Row(
              /**
               * mainAxisAlignment: 列の要素を指定する
               * MainAxisAlignment.spaceAround: 列の要素を等間隔で指定するプロパティ
               */
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            )
          ],
        ));
  }
}
