import 'package:flutter/material.dart';

class InProgressOrdersPage extends StatefulWidget {
  const InProgressOrdersPage({ Key? key }) : super(key: key);

  @override
  _InProgressOrdersPageState createState() => _InProgressOrdersPageState();
}

class _InProgressOrdersPageState extends State<InProgressOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Pedidos en preparacion", style: TextStyle(color: Colors.white),)
    );
  }
}