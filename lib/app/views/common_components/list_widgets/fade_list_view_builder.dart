import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:sky_util_app/data/types.dart';

class FadeListViewBuilder extends StatelessWidget {
  FadeListViewBuilder({
    @required this.itemCount,
    @required this.builder,
    this.direction = Axis.vertical,
    this.delay = const Duration(milliseconds: 100),
    this.showItemDuration = const Duration(milliseconds: 500),
    this.showItemInterval = const Duration(milliseconds: 100),
  });

  final int itemCount;
  final ListViewItemBuilder builder;

  final Axis direction;
  final Duration delay;
  final Duration showItemDuration;
  final Duration showItemInterval;

  @override
  Widget build(BuildContext context) {
    return LiveList(
      scrollDirection: Axis.vertical,
      delay: const Duration(milliseconds: 100),
      showItemDuration: const Duration(milliseconds: 500),
      showItemInterval: const Duration(milliseconds: 100),
      reAnimateOnVisibility: false,
      itemCount: itemCount,
      visibleFraction: 0.05,
      itemBuilder: (context, index, animation) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0, end: 1).animate(animation),
          // And slide transition
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0, -0.1),
              end: Offset.zero,
            ).animate(animation),
            // Paste you Widget
            child: builder(context, index),
          ),
        );
      },
    );
  }
}
