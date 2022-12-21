import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1, num2, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: "0",
              ),
              controller: t1,
              textAlign: TextAlign.right,
            ),
            TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: "0",
              ),
              controller: t2,
              textAlign: TextAlign.right,
            ),
            Text(
              "Output = $sum",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: doAdd,
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  color: Colors.yellow,
                ),
                MaterialButton(
                  onPressed: doSub,
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  color: Colors.yellow,
                )
              ],
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: doMul,
                  child: Text(
                    "*",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  color: Colors.yellow,
                ),
                MaterialButton(
                  onPressed: doDiv,
                  child: Text(
                    "/",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                  color: Colors.yellow,
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: doClear,
                  child: Text(
                    "C",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  color: Colors.yellow,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
