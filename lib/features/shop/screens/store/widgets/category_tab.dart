

import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/brand/t_brand_showcase.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //brands
            const TBrandShowcase(images: [
              TImages.productImage1,
              TImages.productImage2,
              TImages.productImage3,
            ],),
            SizedBox(height: TSizes.spaceBtwItems,),
      
            //products
            TSectionHeading(title: 'You might like', showActionButton: true, onPressed: (){},),
            SizedBox(height: TSizes.spaceBtwItems,),
      
            TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductCardVertical()),
            SizedBox(height: TSizes.spaceBtwSections,),
          ],
        ),
      
      ),
      ]
    );
  }
}