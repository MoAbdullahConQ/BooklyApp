import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              txtColor: Colors.black,
              bkColor: Colors.white,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Preview',
              fontSize: 16,
              txtColor: Colors.white,
              bkColor: Color(0xffEF8262),
              borderRadius: BorderRadius.horizontal(right: Radius.circular(16)),
            ),
          )
        ],
      ),
    );
  }
}
