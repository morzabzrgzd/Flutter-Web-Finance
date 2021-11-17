import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';


class TopMenu extends StatelessWidget {
  const TopMenu({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.08,
        vertical: size.height * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset('assets/icons/twitter.png'),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: Image.asset('assets/icons/facebook.png'),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: Image.asset('assets/icons/medium.png'),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset('assets/icons/finnace.png'),
              const SizedBox(width: 10),
              Text(
                'Finance',
                style: GoogleFonts.mavenPro(
                    color: kTitleColor,
                    fontSize: size.width * 0.02,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          InkWell(
            onTap: () {},
            child: Image.asset('assets/icons/menu.png'),
          ),
        ],
      ),
    );
  }
}
