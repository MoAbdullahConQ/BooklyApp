import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}