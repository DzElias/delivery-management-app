import 'package:delivery_mgnt_app/bloc/dashboard/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatelessWidget {
const Dashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      
      width: MediaQuery.of(context).size.width/1.5 -16,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff1F202D),
        borderRadius: BorderRadius.circular(20)
      ),

      child: Center(
        child: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
        
              if (state is DashboardNewOrdersPageState) {
                return Text("Pedidos Nuevos", style: TextStyle(color: Colors.white),);
              } else if (state is DashboardInProgressOrdersPageState) {
                return Text("Pedidos en preparacion", style: TextStyle(color: Colors.white));
              } else if (state is DashboardOnTheWayOrdersPageState) {
                return Text("Pedidos en camino", style: TextStyle(color: Colors.white));
              }
            
            return CircularProgressIndicator();
        
            
            
          },
        ),
      ),
    );
  }
}