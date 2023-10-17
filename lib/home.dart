import 'package:flutter/material.dart';

class wisdom extends StatefulWidget {
  const wisdom({super.key});

  @override
  State<wisdom> createState() => _wisdomState();
}

class _wisdomState extends State<wisdom> {
  int _index = 0;
  List qoutes = [
    "Strive not to be a success, but rather to be of value",
    "It always seems impossible until it's done",
    "It is better to fail in originality than to succeed in imitation",
    "Success is best when it's shared.",
    "Work hard in silence, let your success be your noise",
    "Hun katwa ioh,lymhun iakhun haduh wa ioh.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(14.5),
                    ),
                    child: Center(
                        child: Text(
                      qoutes[_index % qoutes.length],
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ))),
              ),
            ),
            Divider(
              thickness: 2.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: ElevatedButton.icon(
                  onPressed: _showQoute,
                  icon: Icon(Icons.wb_sunny),
                  label: Text(
                    "Inspire Me!",
                    style: TextStyle(fontSize: 18.8),
                    selectionColor: Colors.red.shade400,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent.shade700)),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQoute() {
    // increment our index/counter by 1
    setState(() {
      _index += 1;
    });
  }
}
