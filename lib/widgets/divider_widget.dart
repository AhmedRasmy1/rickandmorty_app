import 'package:flutter/material.dart';
import 'package:rickandmorty_app/constants/my_colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
    this.endIndent,
  });
  final double? endIndent;
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyColors.myYellow,
      thickness: 2,
      endIndent: endIndent,
      height: 30,
    );
  }
}
