import 'package:bookly_app/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  // String val = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        controller: controller,
        // onChanged: (value) {
        // //   // var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
        // //   // getWeatherCubit.getWeather(cityName: value);
        // //   // Navigator.pop(context);
        //   val = value;
        // },
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          labelText: 'Search',
          suffixIcon: Opacity(
              opacity: .8,
              child: IconButton(
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    BlocProvider.of<SearchCubit>(context)
                        .feachResultSearch(bookName: controller.text);
                  }
                },
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 22,
                ),
              )),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
