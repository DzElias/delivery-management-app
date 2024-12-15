import 'package:delivery_mgnt_app/widgets/new_order_card.dart';
import 'package:flutter/material.dart';

class NewOrdersPage extends StatefulWidget {
  const NewOrdersPage({ Key? key }) : super(key: key);

  @override
  _NewOrdersPageState createState() => _NewOrdersPageState();
}

class _NewOrdersPageState extends State<NewOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        childAspectRatio: 2,
        
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          NewOrderCard(),
          NewOrderCard(),
          NewOrderCard()
        ],
      ),
    );
  }
}