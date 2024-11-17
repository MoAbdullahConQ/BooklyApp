import 'package:bookly_app/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: CustomBookImage(),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessege);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
