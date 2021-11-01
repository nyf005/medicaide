import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String imageLink;
  final Border border;

  CircleImage({this.imageLink, this.border});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          border: border,         
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageLink),
          ),
        ),
      ),
    );
  }
}
