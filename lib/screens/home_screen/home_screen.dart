import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_api/bloc/weather_bloc.dart';
import 'package:weather_api/screens/home_screen/widgets/home.dart';

import '../../constant/image_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,

      /// AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 1.2 * kToolbarHeight, 20, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              /// Background Colored Image
              Align(
                alignment: const AlignmentDirectional(7, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF558B2F),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-7, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF558B2F),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.3),
                child: Container(
                  height: 300,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Color(0xFCFC5D47),
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if (state is WeatherSuccess) {
                    return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '${state.weather.areaName}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Good Afternoon',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  Image(
                                    image: const AssetImage(ZImages.seven),
                                    height: MediaQuery.of(context).size.height *
                                        .35,
                                  ),
                                  Text(
                                    '${state.weather.temperature!.celsius!.round()}°C',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 52),
                                  ),
                                  Text(
                                    state.weather.weatherMain!.toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    DateFormat('EEEE dd .').format(state.weather.date!),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Image(
                                          image: AssetImage(
                                            ZImages.six,
                                          ),
                                          height: 50,
                                          width: 50,
                                        ),
                                        const SizedBox(
                                          width: 10
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Sunrise',
                                              style: TextStyle(
                                                  color: Colors.white60),
                                            ),
                                            Text(
                                              DateFormat().add_jm().format(state.weather.sunrise!),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Image(
                                          image: AssetImage(
                                            ZImages.eleven,
                                          ),
                                          height: 50,
                                          width: 50,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Sunset',
                                              style: TextStyle(
                                                  color: Colors.white60),
                                            ),
                                            Text(
                                              DateFormat().add_jm().format(state.weather.sunset!),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  color: Colors.grey.shade600,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Image(
                                          image: AssetImage(
                                            ZImages.nine,
                                          ),
                                          height: 50,
                                          width: 50,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Temp Max',
                                              style: TextStyle(
                                                  color: Colors.white60),
                                            ),
                                            Text(
                                              state.weather.tempMax!.celsius!.round().toString(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Image(
                                          image: AssetImage(
                                            ZImages.ten,
                                          ),
                                          height: 50,
                                          width: 50,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Temp Min',
                                              style: TextStyle(
                                                  color: Colors.white60),
                                            ),
                                            Text(
                                              state.weather.tempMin!.celsius!.round().toString(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ));
                  } else {
                    return const AllFeatures();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
