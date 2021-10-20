import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DraggableNotifier extends ChangeNotifier {
  double _animation = 0;

  double get animation => _animation;

  set animation(double x) {
    _animation = x;
    notifyListeners();
  }
}

final draggableProvider =
    ChangeNotifierProvider<DraggableNotifier>((ref) => DraggableNotifier());
