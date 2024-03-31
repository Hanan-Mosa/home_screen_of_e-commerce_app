import 'package:flutter/material.dart';

import '../../layout/widgets/category_name.dart';

class CategoryWidget extends StatelessWidget {
  CategoryData categoryData;

  CategoryWidget({super.key, required this.categoryData});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(categoryData.imagePath),
          radius: 40,
        ),
        Container(
            width: 80,
            child: Text(
              categoryData.title,
              style: theme.textTheme.bodyMedium,
              maxLines: 2,
              textAlign: TextAlign.center,
            ))
      ],
    );

    // return Column(
    //   children: [
    //     SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         children: [
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Women’s fashion'),
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Men’s fashion'),
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Laptops & Electronics'),
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Baby & Toys'),
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Beauty'),
    //         ],
    //       ),
    //     ),
    //     SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: Row(
    //         children: [
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Women’s fashion'),
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Men’s fashion'),
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Laptops & Electronics'),
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Baby & Toys'),
    //           CategoryName(
    //               categoryImage: 'assets/images/test.jpg',
    //               categoryName: 'Beauty'),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}

class CategoryData {
  String title;

  String imagePath;

  CategoryData({required this.title, required this.imagePath});
}
