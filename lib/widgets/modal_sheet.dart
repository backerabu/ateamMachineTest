import 'package:ateam_machine_test/models/product_model.dart';
import 'package:flutter/material.dart';

Widget modalSheet(ProductModel product) {
  return new Container(
      child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.network(
            product.image,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      GridTileBar(
        backgroundColor: Colors.white,
        title: Text(
          product.title,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Category: " +
                  categoryValues.map.keys
                      .firstWhere((element) =>
                          categoryValues.map[element] == product.category)
                      .toString(),
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Rating: " + product.rating.rate.toString(),
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Price: " + product.price.toString(),
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
      ),
    ],
  ));
}
