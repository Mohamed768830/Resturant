import 'package:flutter/material.dart';
import 'package:pos_brandimic/features/home/presentation/widget/text_value_row.dart';
class TotalAndSubTotal extends StatelessWidget {
  const TotalAndSubTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Column(
      children: const [
          SizedBox(
          height: 10,
        ),
        RowValueAndText(
        text: "discount", value: "\$0"),
    SizedBox(
    height: 20,
    ),
    RowValueAndText(
    text: "subtotal", value: "\$20.9"),
          SizedBox(
          height: 15,
        ),
      ],

    );
  }
}
