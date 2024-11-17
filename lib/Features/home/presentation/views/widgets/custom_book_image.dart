import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          // aspectRatio: MediaQuery.of(context).size.width / 580,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imgUrl,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )),
    );
  }
}


// Container(
//         // width: MediaQuery.of(context).size.width / 10,
//         // height: MediaQuery.of(context).size.height / 10,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           // color: const Color(0xffFEBDA6),
//           image: DecorationImage(
//             fit: BoxFit.fill,
//             image: NetworkImage(imgUrl),
//           ),
//         ),
//       ),