import 'package:flutter/material.dart';

class ImageAtom extends StatelessWidget {
  const ImageAtom(
      {super.key,
      required this.imagePath,
      this.width = 32,
      this.height = 32,
      this.fit = BoxFit.cover,
      this.colorImage = Colors.transparent});

  final String imagePath;
  final double width;
  final double height;
  final BoxFit fit;
  final Color colorImage;
  @override
  Widget build(BuildContext context) {
    return imagePath.contains('https')
        ? Image.network(imagePath, width: width, height: height, fit: fit)
        : colorImage == Colors.transparent
            ? Image.asset(
                imagePath,
                width: width,
                height: height,
                fit: fit,
              )
            : ColorFiltered(
                colorFilter: ColorFilter.mode(colorImage, BlendMode.srcIn),
                child: Image.asset(
                  imagePath,
                  width: width,
                  height: height,
                  fit: fit,
                ));
  }
}
