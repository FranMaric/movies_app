import 'package:flutter/material.dart';

class StatefulWrapper extends StatefulWidget {
  const StatefulWrapper({
    Key? key,
    required this.child,
    this.initState,
    this.dispose,
  })  : assert(initState != null || dispose != null, 'Have to use initState or dispose!'),
        super(key: key);

  final Widget child;
  final VoidCallback? initState;
  final VoidCallback? dispose;

  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  void initState() {
    super.initState();
    if (widget.initState != null) {
      widget.initState!();
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    super.dispose();
    if (widget.dispose != null) {
      widget.dispose!();
    }
  }
}
