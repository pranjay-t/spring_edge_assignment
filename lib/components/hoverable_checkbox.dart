import 'package:flutter/material.dart';

class HoverableCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const HoverableCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<HoverableCheckbox> createState() => _HoverableCheckboxState();
}

class _HoverableCheckboxState extends State<HoverableCheckbox> {
  bool _isHovering = false;

  final Color borderColorDefault = Color(0xffD0D5DD);
  final Color borderColorHover = Color(0xff155EEF);
  final Color fillColorHover = Color(0x1A155EEF); // 10% opacity
  final Color fillColorSelected = Color(0xff155EEF);

  @override
  Widget build(BuildContext context) {
    Color borderColor = _isHovering ? borderColorHover : borderColorDefault;
    Color fillColor = widget.value
        ? fillColorSelected
        : _isHovering
            ? fillColorHover
            : Colors.transparent;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: () => widget.onChanged(!widget.value),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: fillColor,
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: widget.value
              ? Icon(Icons.check, size: 16, color: Colors.white)
              : null,
        ),
      ),
    );
  }
}
