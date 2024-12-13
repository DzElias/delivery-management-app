import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
const Dashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      
      width: MediaQuery.of(context).size.width/1.5 -16,
      decoration: BoxDecoration(
        color: Color(0xff1F202D),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}