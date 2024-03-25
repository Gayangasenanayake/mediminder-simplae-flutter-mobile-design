// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ImagePreviewer extends StatelessWidget {
  final String imageUrl;
  final double imageSize;

  ImagePreviewer({
    required this.imageUrl,
    this.imageSize = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
