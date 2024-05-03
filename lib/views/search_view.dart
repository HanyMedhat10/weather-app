import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          'Search City',
          // style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              BlocProvider.of<GetWeatherCubit>(context)
                  .getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              // prefixIcon: const Icon(
              //   Icons.search,
              // ),
              suffixIcon: Icon(Icons.search),
              labelText: 'Search',
              hintText: 'Enter city name',
              border: OutlineInputBorder(
                // borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
              // enabledBorder: const OutlineInputBorder(
              //   borderSide: BorderSide(
              //     color: Colors.green,
              //   ),
              // ),
              // focusedBorder: const OutlineInputBorder(

              // ),
            ),
          ),
        ),
      ),
    );
  }
}
