
import 'dart:ui';

class WidgetModel {
  WidgetModel({required this.offset, required this.text, required this.type});

  final Offset offset;
  final String text;
  final bool type;

  WidgetModel copyWithNewOffset(Offset offset) {
    return WidgetModel(offset: offset, text: text, type : type);
  }
}
