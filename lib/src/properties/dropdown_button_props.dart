import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class DropdownButtonProps extends IconButtonProps {
  const DropdownButtonProps({
    Icon icon = const Icon(Icons.arrow_drop_down, size: 24),
    bool isVisible = true,
    double iconSize = 24.0,
    VisualDensity visualDensity,
    EdgeInsets padding = const EdgeInsets.all(8.0),
    Alignment alignment = Alignment.center,
    double splashRadius,
    Color color,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Color disabledColor,
    MouseCursor mouseCursor = SystemMouseCursors.click,
    FocusNode focusNode,
    bool autofocus = false,
    String tooltip,
    bool enableFeedback = false,
    BoxConstraints constraints,
  }) : super(
          icon: icon,
          isVisible: isVisible,
          iconSize: iconSize,
          visualDensity: visualDensity,
          padding: padding,
          alignment: alignment,
          splashRadius: splashRadius,
          color: color,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          disabledColor: disabledColor,
          mouseCursor: mouseCursor,
          focusNode: focusNode,
          autofocus: autofocus,
          tooltip: tooltip,
          enableFeedback: enableFeedback,
          constraints: constraints,
        );
}
