import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/common/widgets/texts/section_heading.dart';
import 'package:qastlay/features/personalization/screens/about_us/widgets/aboutus_widget.dart';
import 'package:qastlay/features/personalization/screens/about_us/widgets/information_about_us.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/list_titles/settings_menu_title.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(showBackArrow: true, title: Text('About Us')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [

              AboutUsWidget(icon: Iconsax.people,header: 'About Us',
                text: 'Qsatlly Company was established in 2024 in Sudan. Qsatlly Company facilitates students by providing electronic devices and payment is made in installments through monthly payment plans. We provide the latest types of electronic devices.', ),
              const SizedBox(height: CustomSizes.spaceEtwSections),

              Divider(),
              const SizedBox (height: CustomSizes.spaceEtwSections),
              AboutUsWidget(icon: Iconsax.location,header: 'Our Location', text: 'Khartoum, Arabe Market, Emirates Building, Office No.5', ),
              const SizedBox(height: CustomSizes.spaceEtwSections),

              Divider(),
              const SizedBox (height: CustomSizes.spaceEtwSections),
              AboutUsWidget(icon: Iconsax.information, header: 'Contact Information',text: 'Our service is 24 hours',),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InformationAboutUs(text: '0112228906', icon: Icons.phone,),
                  InformationAboutUs(text: '0115428906', icon:Icons.phone,),
                  InformationAboutUs(text: 'qstally@gmail.com', icon: Iconsax.direct,),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}

