import 'package:aswaamozhela/moduls/product.dart';
import 'package:aswaamozhela/moduls/product.dart';
import 'package:aswaamozhela/widgets/details/details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';

import '../constans.dart';

class DetailsScreen extends StatelessWidget {
  final product;
  const DetailsScreen({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: KBackgroundColor,
      elevation: 0.0,
      leading: IconButton(
        padding: EdgeInsets.only(right: KDefalutPadding),
        icon: Icon(
          Icons.arrow_back,
          color: KPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text('back',
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      //style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
