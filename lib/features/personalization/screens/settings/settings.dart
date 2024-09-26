

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/layouts/list_tile/settings_menu_tile.dart';
import 'package:t_store/common/widgets/layouts/list_tile/user_profile_tile.dart';
import 'package:t_store/common/widgets/text/section_heading.dart';
import 'package:t_store/features/personalization/screens/address/address.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            TPrimaryHeaderContainer(child: Column(
              children: [
                //appbar
                TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),),),

                //user profile card
                TUserProfileTile(onPressed: () => Get.to(()=> const ProfileScreen())),
                const SizedBox(height: TSizes.spaceBtwSections,),
              ],
            ),
            ),



            //body
             Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child:  Column(
                children: [
                  //account settings
                  const TSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),

                  TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subtitle: 'Set shopping delivery address', onTap: () => Get.to(()=> UserAddressScreen()),),
                  TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, remove products and move to checkout', onTap: () {},),
                  TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subtitle: 'In-progress and Completed Orders', onTap: () {},),
                  TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to registered bank account', onTap: () {},),
                  TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all discounted coupons', onTap: () {},),
                  TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subtitle: 'Set any kind of notification message', onTap: () {},),
                  TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected accounts', onTap: () {},),

                  //app settings
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subtitle: 'Upload data to your Cloud Firebase', onTap: () {},),

                  TSettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subtitle: 'Set recommendation based on location', trailing: Switch(value: true, onChanged: (value){}),),
                  TSettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subtitle: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value){}),),
                  TSettingsMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subtitle: 'Set image quality to be seen', trailing: Switch(value: false, onChanged: (value){}),),

                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}
