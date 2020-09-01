import 'package:boot_camp/CustomWidgets/custom_icon_btn.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconBtn(
            myicon: Icons.menu,
          ),
          CustomIconBtn(
            myicon: Icons.search,
          ),
        ],
      ),
    );
  }
}
