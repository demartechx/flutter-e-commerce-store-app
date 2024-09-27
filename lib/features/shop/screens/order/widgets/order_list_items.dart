
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/products/t_rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //ROW 1
            Row(
              children: [
                //icon
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.spaceBtwItems / 2,),
      
                //status and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta: 1),
                      
                      ),
                      Text('07 Nov 2024',
                      style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
      
                //icon
                IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,))
              ],
            ),
            SizedBox(height: TSizes.spaceBtwItems,),
      
            //ROW 2
            Row(
            
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //icon
                      Icon(Iconsax.tag),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),
                  
                      //status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                            style: Theme.of(context).textTheme.labelMedium,
                            
                            ),
                            Text('[#234r2]',
                            style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                  
                     
                    ],
                  ),
                ),
      
      
                Expanded(
                  child: Row(
                    children: [
                      //icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: TSizes.spaceBtwItems / 2,),
                  
                      //status and date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                            style: Theme.of(context).textTheme.labelMedium,
                            
                            ),
                            Text('03 Feb 2025',
                            style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                  
                     
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}