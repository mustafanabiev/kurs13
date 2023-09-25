import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_with_cubit/cubit/weather_cubit.dart';
import 'package:weather_with_cubit/pages/home_page.dart';
import 'package:weather_with_cubit/service/weather_service.dart';

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
      home: BlocProvider(
        create: (context) => WeatherCubit(weatherService),
        child: const HomePage(),
      ),
    );
  }
}
