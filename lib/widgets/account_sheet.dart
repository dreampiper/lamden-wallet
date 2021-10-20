import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lamden/providers/draggable.dart';
import 'package:lamden/utils/constants.dart';

import '../widgets/account_sheet_handle.dart';
import 'account_sheet_header.dart';

class AccountDetailSheet extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final double maxHeight = MediaQuery.of(context).size.height;
    final double topPadding = MediaQuery.of(context).padding.top;

    final value = useProvider(draggableProvider);

    final controller = () {
      AnimationController controller =
          useAnimationController(duration: Duration(milliseconds: 600));
      controller.addListener(() {
        value.animation = controller.value;
      });
      return controller;
    }();

    double lerp(double min, double max) =>
        lerpDouble(min, max, controller.value)!;

    double headerTopMargin() => lerp(52, 52 + topPadding);

    double headerFontSize() => lerp(18, 24);

    void toggle() {
      final bool isOpen = controller.status == AnimationStatus.completed;
      controller.fling(velocity: isOpen ? -1 : 1);
    }

    void handleDragUpdate(DragUpdateDetails details) {
      controller.value -= details.primaryDelta! / maxHeight;
    }

    void handleDragEnd(DragEndDetails details) {
      if (controller.isAnimating ||
          controller.status == AnimationStatus.completed) return;

      final double flingVelocity =
          details.velocity.pixelsPerSecond.dy / maxHeight;
      if (flingVelocity < 0.0)
        controller.fling(velocity: math.max(2.0, -flingVelocity));
      else if (flingVelocity > 0.0)
        controller.fling(velocity: math.min(-2.0, -flingVelocity));
      else
        controller.fling(velocity: controller.value < 0.5 ? -2.0 : 2.0);
    }

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Positioned(
          height: lerp(195, 460),
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: toggle,
            onVerticalDragUpdate: handleDragUpdate,
            onVerticalDragEnd: handleDragEnd,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: kPaddingM),
              decoration: const BoxDecoration(
                color: kGrey,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(kRadiusXL),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  SheetHandle(
                    topMargin: 26,
                  ),
                  SheetHeader(
                    fontSize: headerFontSize(),
                    topMargin: headerTopMargin(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
