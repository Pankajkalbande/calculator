import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: ThemeData.dark(),git 
      home: Calci(),
    );
  }
}

class Calci extends StatefulWidget {
  const Calci({Key? key}) : super(key: key);

  @override
  _CalciState createState() => _CalciState();
}

class _CalciState extends State<Calci> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: '0');
  final TextEditingController t2 = new TextEditingController(text: '0');

  void doAddition() {
    this.setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doClaear() {
    setState(() {
      t1.text = '0';
      t2.text = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calci'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(
              "OutPut : $sum",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter first Number",
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter second Number",
              ),
              controller: t2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('+'),
                  onPressed: () {},
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('-'),
                  onPressed: doAddition,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('*'),
                  onPressed: () {},
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('/'),
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(child: Text("Clear"), onPressed: doClaear),
              ],
            )
          ],
        ),
      ),
    );
  }
}
