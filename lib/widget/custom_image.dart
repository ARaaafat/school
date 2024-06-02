import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  CustomImage({required this.image, required this.height});
  String? image;
  double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Image.asset('$image'),
    );
  }
}
