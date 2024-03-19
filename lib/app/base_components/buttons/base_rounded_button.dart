import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_sirius/app/util/themes/extensions/build_context_ext.dart';

class BaseRoundedButton extends StatelessWidget {
  final String primaryText;
  final Color? backgroundColor;
  final String? secondaryText;
  final Color? textColor;
  final void Function() action;
  final bool isExpand;

  const BaseRoundedButton({
    required this.primaryText,
    required this.action,
    this.backgroundColor,
    super.key,
    this.secondaryText,
    this.textColor,
    this.isExpand = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        width: isExpand ? double.infinity : null,
        padding: EdgeInsets.symmetric(
          vertical: secondaryText == null ? 18.h : 11.h,
          horizontal: 20.w,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? context.colors.yandexDefault,
          borderRadius: BorderRadius.all(Radius.circular(40.r)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              primaryText,
              style: context.textStyles.bodyM.copyWith(color: textColor),
              textAlign: TextAlign.center,
            ),
            if (secondaryText != null)
              Text(
                secondaryText!,
                style: context.textStyles.smallR.copyWith(color: textColor),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
