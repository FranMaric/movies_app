import 'package:flutter/material.dart';

const kShowLess = 'show less';
const kShowMore = 'show more';

class ExpandableText extends StatefulWidget {
  const ExpandableText(this.text, {Key? key, this.style, this.breakpoint = 100}) : super(key: key);

  final String text;

  /// If non-null, the style to use for this text.
  final TextStyle? style;

  /// Number of characters after which text is collapsed
  final int breakpoint;

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late final String firstHalf;

  late final bool isShort;

  bool isExpanded = false;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > widget.breakpoint) {
      firstHalf = widget.text.substring(0, widget.breakpoint);
      isShort = false;
    } else {
      firstHalf = widget.text;
      isShort = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return isShort
        ? Text(
            widget.text,
            style: widget.style,
          )
        : Column(
            children: [
              Text(
                !isExpanded ? (firstHalf + '...') : widget.text,
                style: widget.style,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    isExpanded ? kShowLess : kShowMore,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: widget.style?.fontSize,
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
