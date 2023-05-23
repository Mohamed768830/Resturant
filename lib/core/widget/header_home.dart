import 'package:flutter/material.dart';
import '../manage/valuse_manger.dart';
import 'custom_formfield.dart';

class CustomHeader extends StatelessWidget {
  CustomHeader({Key? key}) : super(key: key);
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'User Name',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Current Date',
              style: TextStyle(
                  color: Color(0xffE0E6E9),
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          width: AppSize.width * .22,
          height: 51,
          child: CustomFormField(
              prefixIcon: true,
              hintText: "search_for",
              obsecureText: false,
              textInputType: TextInputType.text,
              controller: controller),
        )
      ],
    );
  }
}
