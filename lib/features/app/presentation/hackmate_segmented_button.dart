import 'package:flutter/material.dart';

import '../../../configurations/configurations.dart';

///Callback that notifies when the selection changes.
typedef OnSelectionChanged<T> = void Function(List<T> selectedItems);

class HackmateSegmentedButton<T> extends StatefulWidget {
  const HackmateSegmentedButton({
    super.key,
    this.multiSelectEnabled = false,
    required this.initialSelection,
    required this.segments,
    required this.onSelectionChanged,
  });

  final bool multiSelectEnabled;
  final List<T> initialSelection;
  final List<T> segments;
  final void Function(List<T> selectedItems) onSelectionChanged;

  @override
  State<HackmateSegmentedButton<T>> createState() =>
      _HackmateSegmentedButtonState();
}

class _HackmateSegmentedButtonState<T>
    extends State<HackmateSegmentedButton<T>> {
  List<T> selected = [];

  @override
  void initState() {
    selected = List.from(widget.initialSelection);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kButtonRadius),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        height: kButtonHeight,
        width: double.infinity,
        child: Row(
          children: List.generate(widget.segments.length, (index) {
            final isSelected = selected.contains(widget.segments[index]);

            final theme = Theme.of(context);
            return Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      selected.remove(widget.segments[index]);
                    } else {
                      if (!widget.multiSelectEnabled) {
                        selected.clear();
                      }
                      selected.add(widget.segments[index]);
                    }
                  });

                  widget.onSelectionChanged(selected);
                },
                child: Container(
                  height: kButtonHeight,
                  padding: const EdgeInsets.all(kPadding),
                  decoration: BoxDecoration(
                    color: isSelected ? theme.primaryColor : Colors.transparent,
                    borderRadius: isSelected
                        ? BorderRadius.only(
                            topLeft: index == 0
                                ? const Radius.circular(kButtonRadius)
                                : Radius.zero,
                            bottomLeft: index == 0
                                ? const Radius.circular(kButtonRadius)
                                : Radius.zero,
                            topRight: index == widget.segments.length - 1
                                ? const Radius.circular(kButtonRadius)
                                : Radius.zero,
                            bottomRight: index == widget.segments.length - 1
                                ? const Radius.circular(kButtonRadius)
                                : Radius.zero,
                          )
                        : null,
                    border: Border(
                      right: !isSelected && index != widget.segments.length - 1
                          ? const BorderSide(
                              color: Colors.black,
                            )
                          : BorderSide.none,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widget.segments[index].toString(),
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      );
}
