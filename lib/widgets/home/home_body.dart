import 'package:aswaamozhela/moduls/product.dart';
import 'package:aswaamozhela/screens/details_screen.dart';
import 'package:aswaamozhela/widgets/home/product_card.dart';
import 'package:flutter/material.dart';
import 'package:aswaamozhela/constans.dart';
import "package:flutter/src/widgets/navigator.dart";
import 'package:google_fonts/google_fonts.dart';
//import 'package:navigator/navigator.dart';

//import 'dart:js';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              SizedBox(height: KDefalutPadding / 2),
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70.0),
                    decoration: BoxDecoration(
                        color: KBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                  ),
                  ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) => Productcard(
                      itemindex: index,
                      product: products[index],
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ))
            ],
          )),
    );
  }
}
