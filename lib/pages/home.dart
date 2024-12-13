import 'package:delivery_mgnt_app/pages/dashboard/dashboard.dart';
import 'package:delivery_mgnt_app/widgets/menu.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff131420,),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Menu(),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 16.0),
            child: Dashboard(),
          )

        ],
      ),
    );
  }
}