import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/bloc/home_bloc.dart';
import 'package:rest_api_with_bloc/cubit/home_cubit.dart';
import 'package:rest_api_with_bloc/home/bloc_page.dart';
import 'package:rest_api_with_bloc/home/cubit_page.dart';
import 'package:rest_api_with_bloc/service/home_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: BlocProvider(
      //   create: (context) => HomeBloc(homeService)..add(FetchEvent()),
      //   child: const BlocPage(),
      // ),
      home: BlocProvider(
        create: (context) => HomeCubit(homeService)..getUsers(),
        child: const CubitPage(),
      ),
    );
  }
}
