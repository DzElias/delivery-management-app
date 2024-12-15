import 'package:delivery_mgnt_app/bloc/dashboard/dashboard_bloc.dart';
import 'package:delivery_mgnt_app/pages/dashboard/in_progress_orders/in_progress_orders_page.dart';
import 'package:delivery_mgnt_app/pages/dashboard/new_orders/new_orders_page.dart';
import 'package:delivery_mgnt_app/pages/dashboard/on_the_way_orders/on_the_way_orders_page.dart';
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

      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
      
            if (state is DashboardNewOrdersPageState) {
              return NewOrdersPage();
            } else if (state is DashboardInProgressOrdersPageState) {
              return InProgressOrdersPage();
            } else if (state is DashboardOnTheWayOrdersPageState) {
              return OnTheWayOrdersPage();
            }
          
          return CircularProgressIndicator();
      
          
          
        },
      ),
    );
  }
}