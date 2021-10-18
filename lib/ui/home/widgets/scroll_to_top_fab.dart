import 'package:flutter/material.dart';

/// Number of pixels scrolled after which [ScrollToTopFAB] is shown
const int kAfterPixelsShow = 500;

class ScrollToTopFAB extends StatefulWidget {
  const ScrollToTopFAB({Key? key, required this.scrollController}) : super(key: key);

  final ScrollController scrollController;

  @override
  State<ScrollToTopFAB> createState() => _ScrollToTopFABState();
}

class _ScrollToTopFABState extends State<ScrollToTopFAB> with SingleTickerProviderStateMixin {
  late AnimationController _hideFabAnimController;

  @override
  void initState() {
    super.initState();

    _hideFabAnimController = AnimationController(
      vsync: this,
      duration: kThemeAnimationDuration,
      value: 0, // initially hidden
    );

    widget.scrollController.addListener(scrollControllerListener);
  }

  void scrollControllerListener() {
    if (widget.scrollController.position.pixels > kAfterPixelsShow) {
      _hideFabAnimController.forward();
    } else {
      _hideFabAnimController.reverse();
    }
  }

  void scrollToTop() {
    widget.scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeOutExpo,
    );
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(scrollControllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _hideFabAnimController,
      child: ScaleTransition(
        scale: _hideFabAnimController,
        child: FloatingActionButton(
          onPressed: scrollToTop,
          child: const Icon(
            Icons.arrow_upward_sharp,
          ),
        ),
      ),
    );
  }
}
