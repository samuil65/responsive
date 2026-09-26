import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CustomDropdown<T> extends StatefulWidget {
  final T value;
  final List<T> items;
  final String Function(T) labelBuilder;
  final ValueChanged<T?> onChanged;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.labelBuilder,
    required this.onChanged,
  });

  @override
  State<CustomDropdown<T>> createState() => _CustomDropdownState<T>();
}

class _CustomDropdownState<T> extends State<CustomDropdown<T>> {
  late final ValueNotifier<T?> _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = ValueNotifier<T?>(widget.value);
  }

  @override
  void didUpdateWidget(covariant CustomDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.value != oldWidget.value &&
        widget.value != _selectedValue.value) {
      _selectedValue.value = widget.value;
    }
  }

  @override
  void dispose() {
    _selectedValue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        // مهم جدًا لمنع الـ Overflow
        isExpanded: true,

        // القيمة الحالية
        valueListenable: _selectedValue,

        // العناصر
        items: widget.items.map((item) {
          return DropdownItem<T>(
            value: item,
            height: 40,
            child: Text(
              widget.labelBuilder(item),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff064061),
              ),
            ),
          );
        }).toList(),

        // عند اختيار عنصر
        onChanged: (value) {
          _selectedValue.value = value;
          widget.onChanged(value);
        },

        // شكل الزر
        buttonStyleData: ButtonStyleData(
          height: 40,
          width: 140,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFFE5E7EB), width: 1),
          ),
        ),

        // شكل السهم
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 20,
            color: Color(0xff064061),
          ),
        ),

        // شكل القائمة المفتوحة
        dropdownStyleData: DropdownStyleData(
          width: 140,
          maxHeight: 200,

          padding: const EdgeInsets.symmetric(vertical: 4),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xFFE5E7EB), width: 1),
          ),

          offset: const Offset(0, -2),
        ),

        // المسافة داخل عناصر القائمة
        menuItemStyleData: const MenuItemStyleData(
          padding: EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
    );
  }
}
