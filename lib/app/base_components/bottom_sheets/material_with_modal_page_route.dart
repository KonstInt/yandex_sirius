import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yandex_sirius/app/base_components/bottom_sheets/bottom_sheet_route.dart';

class MaterialWithModalsPageRoute<T> extends MaterialPageRoute<T> {
  MaterialWithModalsPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
            settings: settings,
            fullscreenDialog: fullscreenDialog,
            builder: builder,
            maintainState: maintainState);
  ModalSheetRoute? _nextModalRoute;

  @override
  bool canTransitionTo(TransitionRoute<dynamic> nextRoute) {
    return (nextRoute is MaterialPageRoute && !nextRoute.fullscreenDialog) ||
        (nextRoute is CupertinoPageRoute && !nextRoute.fullscreenDialog) ||
        (nextRoute is MaterialWithModalsPageRoute &&
            !nextRoute.fullscreenDialog) ||
        (nextRoute is ModalSheetRoute);
  }

  @override
  void didChangeNext(Route? nextRoute) {
    if (nextRoute is ModalSheetRoute) {
      _nextModalRoute = nextRoute;
    }

    super.didChangeNext(nextRoute);
  }

  @override
  bool didPop(T? result) {
    _nextModalRoute = null;
    return super.didPop(result);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    final theme = Theme.of(context).pageTransitionsTheme;
    final nextRoute = _nextModalRoute;
    if (nextRoute != null) {
      if (!secondaryAnimation.isDismissed) {
        final fakeSecondaryAnimation =
            Tween<double>(begin: 0, end: 0).animate(secondaryAnimation);

        final defaultTransition = theme.buildTransitions<T>(
            this, context, animation, fakeSecondaryAnimation, child);
        return nextRoute.getPreviousRouteTransition(
            context, secondaryAnimation, defaultTransition);
      } else {
        _nextModalRoute = null;
      }
    }

    return theme.buildTransitions<T>(
        this, context, animation, secondaryAnimation, child);
  }
}
