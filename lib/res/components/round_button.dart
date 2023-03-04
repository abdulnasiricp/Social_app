// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tech_media/res/color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  final Color color, textcolor;
  final bool loading;
  const RoundButton({
    Key? key,
    required this.title,
    required this.onpress,
    this.color = AppColors.primaryColor,
    this.textcolor = AppColors.whiteColor,
    this.loading = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onpress,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(40)),
        child: loading
            ? Center(
                child: CircularProgressIndicator(color: Colors.white),
              )
            : Center(
                child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 16, color: textcolor),
              )),
      ),
    );
  }
}
