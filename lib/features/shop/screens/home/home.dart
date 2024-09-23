import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //appbar
                  const THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //searchbar
                  const TSearchContainer(text: 'Search in Store'),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading
                        const TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white,
                            ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        //categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) {
                                return  TVerticalImageText(image: TImages.shoeIcon, title: 'Shoes Category', onTap: (){});
                              }),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


