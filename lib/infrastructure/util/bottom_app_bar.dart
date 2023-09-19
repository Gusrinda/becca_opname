import 'package:becca_inventory/infrastructure/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class CustomBottomAppBarItem {
  CustomBottomAppBarItem({
    required this.icon,
    this.activeIcon,
    this.text,
    this.badge = 0,
  });

  final String icon;
  final String? activeIcon;
  final String? text;
  final int badge;
}

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({
    Key? key,
    required this.items,
    this.centerItemText,
    this.height = 60.0,
    this.iconSize = 24.0,
    this.backgroundColor,
    required this.unselectedItemColor,
    required this.selectedItemColor,
    this.notchedShape,
    required this.onTap,
    this.selectedLabelStyle,
    this.unselectedLabelStyle,
    this.defaultSelected = 0,
    this.centerLabelStyle,
  }) : super(key: key) {
    assert(items.length == 2 || items.length == 4);
  }

  final List<CustomBottomAppBarItem> items;
  final String? centerItemText;
  final double height;
  final double? iconSize;
  final Color? backgroundColor;
  final Color unselectedItemColor;
  final Color selectedItemColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int> onTap;
  final TextStyle? selectedLabelStyle;
  final TextStyle? unselectedLabelStyle;
  final TextStyle? centerLabelStyle;
  final int defaultSelected;

  @override
  State<StatefulWidget> createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTap(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.defaultSelected != 0) {
      _selectedIndex = widget.defaultSelected;
    }

    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    // items.insert(items.length >> 1, _buildMiddleTabItem());

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16), topLeft: Radius.circular(16)),
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 2),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: BottomAppBar(
          color: widget.backgroundColor,
          elevation: 12,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items,
          ),
        ),
      ),
    );
  }

  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: widget.iconSize),
            const SizedBox(height: 2),
            Text(
              widget.centerItemText ?? '',
              style: widget.centerLabelStyle ??
                  TextStyle(
                    color: widget.unselectedItemColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required CustomBottomAppBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    final selected = _selectedIndex == index;
    final color =
        selected ? widget.selectedItemColor : widget.unselectedItemColor;
    final style = selected
        ? (widget.selectedLabelStyle ?? const TextStyle())
        : (widget.unselectedLabelStyle ?? const TextStyle());

    final iconWidget = ImageIcon(
      AssetImage(item.icon),
      color: color,
    );

    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 4,
                ),
                iconWidget,
                SizedBox(
                  height: 4,
                ),
                if (item.text != null) ...{
                  const SizedBox(height: 2),
                  Text(
                    item.text!,
                    style: style.copyWith(color: color, fontSize: 8),
                  ),
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}
