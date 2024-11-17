import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      // aspectRatio: MediaQuery.of(context).size.width / 580,
      child: Container(
        // width: MediaQuery.of(context).size.width / 10,
        // height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // color: const Color(0xffFEBDA6),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imgUrl),
          ),
        ),
      ),
    );
  }
}
