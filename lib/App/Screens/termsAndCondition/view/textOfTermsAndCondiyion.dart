import 'package:chartercar/utils/Theme/text_Theme_Data.dart';
import 'package:flutter/material.dart';

class TextOfTermsAndCondition extends StatelessWidget {
  const TextOfTermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        "Lorem ipsum dolor sit amet consectetur. Scelerisque nisi pellentesque urna dapibus ridiculus quis tincidunt viverra elit. Quis ridiculus cras purus magna vel arcu. Aliquam in urna non est et porttitor. Odio maecenas massa senectus quam felis volutpat. Tempus suspendisse et vitae sit ipsum porttitor aliquam. In pellentesque pellentesque semper duis. Tincidunt sit quam adipiscing posuere posuere vel porttitor. Elementum a diam lorem quis mus dui. Imperdiet cras tincidunt vulputate nulla. Arcu et eget integer at nibh nibh elementum viverra et.\n\n "
        "1. Hac sem augue gravida faucibus. Non et nibh sit scelerisque cursus. Congue metus quam in tellus feugiat nascetur consectetur adipiscing scelerisque. \n"
        "2. Tortor arcu cursus vulputate elementum id sed arcu turpis aliquam. \n"
        "3. A magna eget augue elit aliquam. Feugiat tempus bibendum ipsum turpis erat pretium. Justo gravida tellus pharetra volutpat nibh sed sit sed.\n\n"
        "Amet est scelerisque faucibus nibh molestie ut aliquam. Imperdiet et viverra dignissim nisl sit fringilla vestibulum. Arcu morbi quam lorem odio et. Amet parturient praesent mi turpis vel massa neque. Dignissim elementum sapien sed scelerisque. Sed mattis at phasellus aliquet vitae vivamus id ut.\n\n "
        "Ut a facilisi placerat scelerisque consequat. Aliquam lectus diam tincidunt phasellus phasellus. Eu ac ipsum vel sem montes sed ultrices. Velit enim nec vivamus et semper tellus. Sapien diam volutpat velit nulla proin tortor sed consequat mauris. Ut etiam ultricies nec elementum convallis fames eu bibendum arcu. Adipiscing lacus lectus ac rhoncus. Sagittis nisl libero phasellus faucibus consequat lobortis ut eget. Tortor enim nisl volutpat nibh viverra. Blandit enim nunc morbi elementum adipiscing ornare vestibulum mauris lobortis. A cras elit nunc vulputate pulvinar facilisis purus viverra id.\n",
        style: MyTextStyle.terms_and_condition_text_textstyle,
      ),
    );
  }
}
