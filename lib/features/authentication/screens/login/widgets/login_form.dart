import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Form(
        child: Padding(
      padding:
          EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //email
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          //password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
    
          //remember me and forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),
    
              //forgot password
              TextButton(
                  onPressed: () => Get.to(()=> const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword))
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwSections,
          ),
    
          //sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(TTexts.signIn)),
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          //create account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () => Get.to(()=> const SignupScreen()),
                child: const Text(TTexts.createAccount)),
          ),
        ],
      ),
    ));
 
  }
}
