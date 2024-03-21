import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_sirius/app/util/themes/extensions/build_context_ext.dart';

class BaseRoundedCheckbox extends StatelessWidget {
  const BaseRoundedCheckbox({
    required this.value,
    super.key,
    this.callback,
    this.isCircle = false,
    this.radius,
  });
  final bool value;
  final void Function({required bool flag})? callback;
  final bool isCircle;
  final double? radius;

  OutlinedBorder get _shape => isCircle
      ? const CircleBorder()
      : RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        );

  double get _radius => radius ?? 8.r;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.sp,
      width: 24.sp,
      decoration: BoxDecoration(
        color: value ? context.colors.yandexDefault : context.colors.black7,
        borderRadius: !isCircle ? BorderRadius.circular(_radius) : null,
        shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
      ),
      child: Checkbox(
        value: value,
        onChanged: callback != null
            ? (isSelected) => callback!(flag: isSelected!)
            : null,
        fillColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.transparent;
          }
          return context.colors.yandexDefault;
        }),
        checkColor: context.colors.black,
        shape: _shape,
        side: const BorderSide(color: Colors.transparent),
      ),
    );
  }
}
