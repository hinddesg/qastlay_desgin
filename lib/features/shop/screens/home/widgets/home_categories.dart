import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../sub_categories/sub_categories.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index){
            return VerticalImageText(
              title: 'chose',
              image: CustomImages.google,
              onTap: ()=>Get.to(() => const SubCategoriesScreen()),
            );
          }),
    );
  }
}
