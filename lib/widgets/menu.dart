import 'package:delivery_mgnt_app/bloc/dashboard/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Menu extends StatelessWidget {
const Menu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Color(0xff131420),
      width: MediaQuery.of(context).size.width/3,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text("Pedidos", style: TextStyle(color: Color(0xffE5E0E3, ),fontSize: 30, fontWeight: FontWeight.w400)),
          ),
          MenuOption(icon: Icons.list_alt, title: "Nuevos", event: DashboardNewOrdersPageEvent(),),
          MenuOption(icon: Icons.pending_actions, title: "En preparacion", event: DashboardInProgressOrdersPageEvent(),),
          MenuOption(icon: Icons.delivery_dining, title: "En camino", event: DashboardOnTheWayOrdersPageEvent(),),

        ],
      ),
    );
  }
}

class MenuOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final DashboardEvent event;
  const MenuOption({ super.key, required this.icon, required this.title, required this.event });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){
            Provider.of<DashboardBloc>(context, listen: false).add(event);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon, color: Color(0xffE5E0E3, ) , size: 30,),
                SizedBox(width: 15,),
                Text(title, style: TextStyle(color: Color(0xffE5E0E3, ),fontSize: 20, fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
      ),
    );
  }
}