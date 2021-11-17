import 'dart:html';

import 'package:finance_web/components/top_menu.dart';
import 'package:finance_web/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LandingPage extends StatelessWidget {
  String subtitle =
      'At Finance we care about your future. We help you\ninvest the way you want. So you can relax, have fun\nand let your fund grow.';

  LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopMenu(size: size),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset('assets/image/ill1.png'),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.08),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              Text(
                                'Mutual Investment',
                                style: GoogleFonts.overpass(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.03,
                                  color: kTitleColor,
                                ),
                              ),
                              SizedBox(height: size.height * 0.05),
                              Text(
                                subtitle,
                                style: GoogleFonts.overpass(
                                  fontWeight: FontWeight.w600,
                                  fontSize: size.width * 0.014,
                                  color: kTextColor,
                                ),
                              ),
                              SizedBox(height: size.height * 0.08),
                              Column(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: kPrimeryColor,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20,
                                          horizontal: size.width * 0.04),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                    child: Text(
                                      'Learn more',
                                      style: GoogleFonts.overpass(
                                        fontSize: size.width * 0.01,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    width: size.width * 0.035,
                                    height: 2,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff4F4F4F),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                  )
                                ],
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/ill2.png'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
