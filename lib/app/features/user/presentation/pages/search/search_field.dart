import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/search/bloc/search_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/search/delayed_action.dart';
import 'package:yandex_sirius/app/util/themes/extensions/build_context_ext.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    required this.hintText,
    super.key,
    this.focus = false,
    this.initialValue = '',
    this.onChanged,
    this.onCancelSearch,
    this.onChangedDelayed,
  });

  final String hintText;
  final String? initialValue;
  final void Function(String value)? onChanged;
  final void Function(String value)? onChangedDelayed;
  final bool focus;
  final Function()? onCancelSearch;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField>
    with SingleTickerProviderStateMixin {
  final int step = 100;
  final int animationDuration = 300;
  late bool focus;
  late AnimationController _controller;
  late Animation<int> _positionAnimation;
  late TextEditingController _textController;
  late String label;

  void changeFocus() {
    if (!focus) {
      _controller.forward();
    } else {
      _controller.reverse();
      if (_textController.text == '' && widget.onCancelSearch != null) {
        widget.onCancelSearch!();
      }
    }
    focus = !focus;
  }

  @override
  void initState() {
    super.initState();
    focus = widget.focus;

    if (widget.initialValue == null || widget.initialValue == '') {
      label = widget.hintText;
      _textController = TextEditingController();
    } else {
      label = widget.initialValue!;
      _textController = TextEditingController(text: widget.initialValue);
    }

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: animationDuration),
    );

    _positionAnimation = IntTween(
      begin: step,
      end: 0,
    ).animate(_controller);

    if (focus) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _textController.dispose();
    super.dispose();
  }

  int inversePosition(int value) {
    return step - value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!focus) {
          changeFocus();
        }
      },
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: context.colors.black4,
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AnimatedBuilder(
            animation: _positionAnimation,
            builder: (context, child) {
              return Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: _positionAnimation.value,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.search),
                        ),
                      ),
                      Expanded(
                        flex: _positionAnimation.value > 0
                            ? _positionAnimation.value * 8
                            : 0,
                        child: _positionAnimation.value > 0
                            ? Center(
                                child: Text(
                                  label,
                                  maxLines: 1,
                                  style: context.textStyles.bodyR.copyWith(
                                    color: context.colors.black,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                      Expanded(
                        flex: inversePosition(_positionAnimation.value),
                        child: _positionAnimation.value == 0
                            ? TextField(
                                decoration: InputDecoration(
                                  hintText: widget.hintText,
                                  hintStyle: context.textStyles.bodyR.copyWith(
                                    color: context.colors.black,
                                  ),
                                  hintMaxLines: 1,
                                  border: InputBorder.none,
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  counterText: '',
                                ),
                                style: context.textStyles.bodyR.copyWith(
                                  color: context.colors.black,
                                ),
                                controller: _textController,
                                autofocus: true,
                                onChanged: (value) {
                                  if (widget.onChanged != null) {
                                    widget.onChanged!(value);
                                  }
                                  if (widget.onChangedDelayed != null) {
                                    DelayedAction.run(
                                      () => widget.onChangedDelayed!(value),
                                    );
                                  }
                                  if (value == '') {
                                    label = widget.hintText;
                                  } else {
                                    label = value;
                                  }
                                },
                                onTapOutside: (event) {
                                  changeFocus();
                                },
                              )
                            : const SizedBox.shrink(),
                      ),
                      Expanded(
                        flex: _positionAnimation.value,
                        child: const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
