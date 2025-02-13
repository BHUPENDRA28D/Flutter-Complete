import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final title;
  final image;
  final price;
  final rating;
  const ProductCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Container(
              // height: 1000,
              // width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.contain)),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      overflow: TextOverflow.fade),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '₹$price',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Rating : $rating",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
