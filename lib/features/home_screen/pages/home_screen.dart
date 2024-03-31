import 'package:flutter/material.dart';
import 'package:home_screen/features/home_screen/widgets/carousel_slider_offer.dart';
import 'package:home_screen/features/home_screen/widgets/category_widget.dart';
import 'package:home_screen/features/home_screen/widgets/custom_text__feild..dart';
import 'package:home_screen/features/home_screen/widgets/home_appliance.dart';
import 'package:home_screen/features/layout/widgets/category_name.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    List<CategoryData> categoryDataList = [];
    for (int i = 0; i <= 7; i++) {
      categoryDataList.add(CategoryData(
          title: 'Women’s fashion', imagePath: 'assets/images/test.jpg'));
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(children: [
                Expanded(
                  child: TextFormField(
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: theme.primaryColor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:
                              BorderSide(color: theme.primaryColor, width: 1),
                        ),
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          color: Color(0xFF004182),
                          size: 20,
                        ),
                        hintText: 'What do you search for?',
                        hintStyle: theme.textTheme.bodyMedium?.copyWith(
                          color: const Color(0xFF06004F).withOpacity(0.4),
                        ),
                        hintMaxLines: 1),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: theme.primaryColor,
                )
              ]),
              const SizedBox(
                height: 5,
              ),
              CarouselSliderOffer(),
              Row(
                children: [
                  Text(
                    'Categories',
                    style: theme.textTheme.titleMedium,
                  ),
                  const Spacer(),
                  Text('view all', style: theme.textTheme.bodySmall),
                ],
              ),
              SizedBox(
                height: 200,
                width: mediaQuery.width,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 130,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                        categoryData: categoryDataList[index]);
                  },
                  itemCount: categoryDataList.length,
                ),
              ),

              Text(
                'Home Appliance',
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 5,
              ),

              SizedBox(
                height: 180,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(2),
                      child: HomeAppliance(),
                    );
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                ),
              ),

              // using grid view
              // SizedBox(
              //   height: 180,
              //   width: 150,
              //   child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 1,
              //     crossAxisSpacing: 5,
              //     mainAxisSpacing: 5
              //   ),itemBuilder: (context, index){
              //     return HomeAppliance();
              //   }, itemCount: 3,
              //   scrollDirection: Axis.horizontal,),
              // ),

              // SingleChildScrollView with row
              //  const SingleChildScrollView(
              //    scrollDirection: Axis.horizontal,
              //    child: Row(
              //      children: [
              //        HomeAppliance(),
              //        SizedBox(
              //          width: 3,
              //        ),
              //        HomeAppliance(),
              //        SizedBox(
              //          width: 3,
              //        ),
              //        HomeAppliance(),
              //        SizedBox(
              //          width: 3,
              //        ),
              //        HomeAppliance(),
              // ],
              //    ),
              //  ),
            ],
          ),
        ),
      ),
    );
  }
}
