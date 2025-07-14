import 'package:flutter/material.dart';

class ImageNotFoundWidget extends StatelessWidget {
  const ImageNotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.grey[300],
      child: const Icon(
        Icons.newspaper,
        size: 80,
        color: Colors.grey,
      ),
    );
  }
}
