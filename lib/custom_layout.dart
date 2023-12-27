import 'package:flutter/material.dart';

class CustomLayoutBox extends StatelessWidget {
  final String imageAsset;
  final String productName;
  final String price;

  const CustomLayoutBox({
    super.key,
    required this.imageAsset,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 120,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageAsset,
            height: 100,
            width: 250,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          Text(
            productName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                child: Icon(
                  Icons.add_circle_outline_outlined,
                  size: 25,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
