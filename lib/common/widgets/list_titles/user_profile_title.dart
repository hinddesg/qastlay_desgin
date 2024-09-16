import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';

class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({
    super.key, required this.onPressed,
  });
 final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  const CircularImage(
        image: CustomImages.user, width: 50, height: 50,padding: 0, ),
      title:Text('Account',style: Theme.of(context).textTheme.headlineSmall!.apply(color: CustomColors.white,),),
      subtitle:Text('suppor@hind.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: CustomColors.white,),),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit,color: CustomColors.white,),),
    );
  }
}
