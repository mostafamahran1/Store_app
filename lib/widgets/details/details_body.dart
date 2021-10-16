import 'package:aswaamozhela/widgets/details/product_image.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';
import 'color_dot.dart';

class DetailsBody extends StatelessWidget {
  final product;
  const DetailsBody({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: KDefalutPadding * 1.5),
          decoration: BoxDecoration(
            color: KBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    ProductImage(
                      size: size,
                      image: product.image,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: KDefalutPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColor: KTextColor,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: Colors.blue,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.red,
                      isSelected: false,
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: KDefalutPadding / 2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'price ${product.price}',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: KSecondaryColor,
                ),
              ),
              SizedBox(
                height: KDefalutPadding,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: KDefalutPadding / 2),
          padding: EdgeInsets.symmetric(
              horizontal: KDefalutPadding * 0.5, vertical: KDefalutPadding / 2),
          child: Text(
            product.descreption,
            style: TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        )
      ],
    );
  }
}
