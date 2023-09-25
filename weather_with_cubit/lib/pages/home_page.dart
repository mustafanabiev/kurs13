import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_with_cubit/components/custom_icon_button.dart';
import 'package:weather_with_cubit/constants/api_const.dart';
import 'package:weather_with_cubit/constants/app_colors.dart';
import 'package:weather_with_cubit/constants/app_text.dart';
import 'package:weather_with_cubit/constants/app_text_styles.dart';
import 'package:weather_with_cubit/cubit/weather_cubit.dart';
import 'package:weather_with_cubit/utils/enum.dart';

List<String> cities = [
  'bishkek',
  'osh',
  'talas',
  'jalal-abad',
  'batken',
  'tokmok',
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<WeatherCubit>().weatherName();
    super.initState();
  }

  Future<void> weatherName(String name) async {
    await context.read<WeatherCubit>().weatherName(cityName: name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: const Text(AppText.appBar, style: AppTextStyles.appBar),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/weather.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocBuilder<WeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state.status == FetchStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status == FetchStatus.success) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconsButton(
                        onPressed: () async {
                          context.read<WeatherCubit>().weatherLocation();
                        },
                        icon: Icons.near_me,
                      ),
                      CustomIconsButton(
                        onPressed: () {
                          showBottomSheet();
                        },
                        icon: Icons.location_city,
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        Text(
                          '${temp(state.weatherModel?.temp ?? 0)}',
                          style: const TextStyle(
                            fontSize: 96,
                            color: AppColors.white,
                          ),
                        ),
                        Image.network(ApiConst.getIcon(
                            state.weatherModel?.icon ?? '01n', 4)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          state.weatherModel?.description
                                  .replaceAll(' ', '\n') ??
                              '',
                          style: const TextStyle(
                            fontSize: 60,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(width: 40),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: FittedBox(
                          child: Text(
                            state.weatherModel?.city ?? '',
                            style: const TextStyle(
                              fontSize: 60,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else if (state.status == FetchStatus.error) {
              return Center(
                child: Text('Tirkemede kata bar: ${state.status}'),
              );
            } else {
              return const Center(
                child: Text('Belgisiz kata bar'),
              );
            }
          },
        ),
      ),
    );
  }

  int temp(double? temp) {
    return (temp! - 273.15).toInt();
  }

  void showBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.white),
            color: AppColors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.6,
          child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return Card(
                child: Builder(builder: (context) {
                  return ListTile(
                    onTap: () async {
                      Navigator.pop(context);
                      await weatherName(city);
                    },
                    title: Text(city),
                  );
                }),
              );
            },
          ),
        );
      },
    );
  }
}
