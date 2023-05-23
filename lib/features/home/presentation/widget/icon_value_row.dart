import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowIconAndText extends StatelessWidget {
  const RowIconAndText({Key? key, required this.image, required this.value})
      : super(key: key);
  final String image;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            image,
            width: 24,
            height: 24,
          ),
          const SizedBox(
            width: 14,
          ),
          Flexible(
            child: Text(value,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}
