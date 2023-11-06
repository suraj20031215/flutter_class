import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
drawer:Drawer(backgroundColor: Colors.blue[100]),
      appBar: AppBar(
foregroundColor: Colors.white,
backgroundColor: Colors.indigo,

        title: Text('HomePage'),
      ),

      body: Center(
        child: Text('Home pAGE'),

      ),
    );
  }
}
