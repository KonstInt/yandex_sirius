import 'package:flutter/widgets.dart';

class ScrollToTopStatusBarHandler extends StatefulWidget {

  const ScrollToTopStatusBarHandler({
    required this.child,
    required this.scrollController,
    Key? key,
  }) : super(key: key);
  final Widget child;
  final ScrollController scrollController;

  @override
  ScrollToTopStatusBarState createState() => ScrollToTopStatusBarState();
}

class ScrollToTopStatusBarState extends State<ScrollToTopStatusBarHandler> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        widget.child,
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: MediaQuery.of(context).padding.top,
          child: Builder(
            builder: (context) => GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => _handleStatusBarTap(context),
              excludeFromSemantics: true,
            ),
          ),
        ),
      ],
    );
  }

  void _handleStatusBarTap(BuildContext context) {
    final controller = widget.scrollController;
    if (controller.hasClients) {
      controller.animateTo(
        0.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
  }
}
