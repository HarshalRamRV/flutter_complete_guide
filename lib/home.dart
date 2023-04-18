import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  homeState createState() => homeState();
}

class homeState extends State<home> {
  final List<Feature> features = [
    Feature(
      title: "TEMPERATURE",
      color: Colors.green,
      data: [0.3, 0.6, 0.8, 0.9, 1, 1.2],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text('ONION'),
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'userdetails');
                    },
                    icon: Icon(Icons.account_circle),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'cal');
                    },
                    icon: Icon(Icons.calendar_month),
                  ),
                ],
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 64.0),
                    child: Text(
                      "TEMPERATURE READINGS",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  LineGraph(
                    features: features,
                    size: Size(420, 450),
                    labelX: [
                      'Day 1',
                      'Day 2',
                      'Day 3',
                      'Day 4',
                      'Day 5',
                      'Day 6'
                    ],
                    labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
                    showDescription: true,
                    graphColor: Colors.black87,
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            )));
  }
}
