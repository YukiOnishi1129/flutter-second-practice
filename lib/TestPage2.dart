import 'package:flutter/material.dart';
import 'package:hello/TestPage3.dart';

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Test2")),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
                // TestPage3を呼び出し
                onPressed: () => {
                      Navigator.of(context).pushNamed('/test3')
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return TestPage3();
                      // }))
                    },
                child: Text('進む', style: TextStyle(fontSize: 80))),
            TextButton(
              // 一つ前に戻る
              onPressed: () => {Navigator.of(context).pop()},
              child: Text('戻る', style: TextStyle(fontSize: 80)),
            )
          ]),
        ));
  }
}
