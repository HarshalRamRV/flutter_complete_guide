import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './database.dart';
import 'package:provider/provider.dart';

class UserDetailsPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final user = _auth.currentUser;
    String? uid = user?.uid;
    String? email = user?.email;
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('uid: ${uid}'),
            SizedBox(height: 8.0),
            Text('Email: ${email}'),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
