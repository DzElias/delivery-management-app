import 'package:flutter/material.dart';

class OnTheWayOrdersPage extends StatefulWidget {
  const OnTheWayOrdersPage({ Key? key }) : super(key: key);

  @override
  _OnTheWayOrdersPageState createState() => _OnTheWayOrdersPageState();
}

class _OnTheWayOrdersPageState extends State<OnTheWayOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Pedidos en camino", style: TextStyle(color: Colors.white),)
    );
  }
}