import 'package:flutter/cupertino.dart';
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
        primarySwatch: Colors.pink,
      ),
      home: Hw7(),
    );
  }
}
class Hw7 extends StatelessWidget {
  const Hw7({Key? key}) : super(key: key);

  // วงกลม มี border มีเงา
  Widget buildButton(int num) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 75.0,
        height: 75.0,
        //color: Colors.white, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.greenAccent, width: 4.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // สีเงา
                offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]
        ),
        child: OutlinedButton(
            onPressed: () {},
            child: Text('$num',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, color: Colors.black54)
            )),
          ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock,
                            size: 50,
                            color: Colors.black12,
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'กรุณาใส่รหัสผ่าน',
                                style:  TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 1; i <= 3; i++) buildButton(i),
                      ],
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 4; i <= 6; i++) buildButton(i),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 7; i <= 9; i++) buildButton(i),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 70,height: 75),
                    buildButton(0),
                    SizedBox(width: 20),
                    Icon(
                      Icons.backspace,
                      size: 50,
                      color: Colors.black12,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('ลืมรหัสผ่าน',
                    style: TextStyle(color: Colors.lightBlueAccent),

                    ),
                  ),
                ),
              ],
            ),
        )
    );
  }
}