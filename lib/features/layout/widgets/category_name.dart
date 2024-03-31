import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  String categoryImage;
  String categoryName;

  CategoryName(
      {super.key, required this.categoryImage, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(categoryImage),
            radius: 40,
          ),
          Container(
              width: 80,
              child: Text(
                categoryName,
                style: theme.textTheme.bodyMedium,
                maxLines: 2,
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
