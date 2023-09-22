import 'package:flutter/material.dart';
import 'main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  String r = '';
  late int n = 0;
  void fun_fuct() {
    int fuct = 1;
    int n = int.parse(controller.text);
    if (n != null) {
      setState(() {
        for (int i = 1; i <= n; i++) {
          fuct *= i;
        }
        r = ' $fuct ';
      });
    }
  }

  void fun_opposite() {
    int n = int.parse(controller.text);
    int t = n * -1;
    setState(() {
      r = ' $t';
    });
  }

  void fun_Multiples() {
    int n = int.parse(controller.text);
    List<int> m = [];
    for (int i = 1; i <= 10; i++) {
      m.add(n * i);
    }
    setState(() {
      r = ' $m';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 116, 110, 93),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Enter num',
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: fun_fuct,
                  child: Text('fuctor'),
                ),
                ElevatedButton(
                  onPressed: fun_opposite,
                  child: Text('The opposite'),
                ),
                ElevatedButton(
                  onPressed: fun_Multiples,
                  child: Text('Multiples'),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controller.clear();
                      });
                    },
                    child: Text('clear')),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    r,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
