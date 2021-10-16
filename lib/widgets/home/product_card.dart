import 'package:aswaamozhela/moduls/product.dart';
import 'package:aswaamozhela/widgets/home/product_card.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';

class Productcard extends StatelessWidget {
  const Productcard(
      {Key? key, required this.itemindex, this.product, required this.press})
      : super(key: key);

  final int itemindex;
  final product;
  final press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: KDefalutPadding,
        vertical: KDefalutPadding ,
      ),
      height: 150.0,
      //color: Colors.green,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      //offset: Offset(0, 15),
                      //blurRadius: 10,
                      color: Colors.black12,
                    ),
                  ]),
            ),
            Positioned(
                top: 15.0,
                left: -5.0,
                right: 105.0,

                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: KDefalutPadding),
                  height: 125.0,
                  width: 220.0,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
              bottom: 0.0,
              right: -12.0,
              child: SizedBox(
                height: 160.0,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: KDefalutPadding),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: KDefalutPadding),
                      child: Text(
                        product.subTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Spacer(),
                    Padding(
                        padding: const EdgeInsets.all(KDefalutPadding),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: KDefalutPadding,
                            vertical: KDefalutPadding / 5,
                          ),
                          decoration: BoxDecoration(
                            color: KSecondaryColor,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Text('price : ${product.price}'),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
