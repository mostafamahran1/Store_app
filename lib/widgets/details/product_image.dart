import 'package:flutter/material.dart';

import '../../constans.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.size, this.image,
  }) : super(key: key);

  final Size size;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: KDefalutPadding),
      height: size.width * 0.8,
      //color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            //height: size.width * 0.7,
            //width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              //shape: BoxShape.circle,
            ),
          ),
          Image.asset(image,
            height: size.width  ,
            width: size.width * 1.6 ,
            //fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
