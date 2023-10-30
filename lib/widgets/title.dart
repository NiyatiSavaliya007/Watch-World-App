import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  final String title;
  const Titles({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kToolbarHeight + 12,
        ),
        // if (title == "Login" || title == "Create Account")
        //   GestureDetector(
        //     onTap: () {
        //       Navigator.of(context).pop();
        //     },
        //     child: const Icon(Icons.arrow_back_ios),
        //),
        Text(
          title,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
