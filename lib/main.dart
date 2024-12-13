import 'package:delivery_mgnt_app/bloc/dashboard/dashboard_bloc.dart';
import 'package:delivery_mgnt_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardBloc(),
      child: const MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    );
  }
}
