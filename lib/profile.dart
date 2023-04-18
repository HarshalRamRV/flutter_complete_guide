import 'package:flutter/material.dart';

const List<String> list = <String>['English', 'Tamil', 'Hindi'];

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  profileState createState() => profileState();
}

class profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text('profile'),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  icon: Icon(Icons.home),
                ),
              ),
              body: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    //stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      Colors.yellow,
                      Colors.green,
                    ],
                  ),
                ),
                child: DropdownButtonExample(),
              ))),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({Key? key}) : super(key: key);

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
