import 'package:flutter/material.dart';
import 'package:phoenix_mobile/themes/phoenix.dart';

class PhoenixButton extends StatelessWidget {
  final String label;
  final Function() onPress;
  bool isEnabled;
  double? width;
  double height;
  double paddingTop;
  double paddingBottom;
  double paddingLeft;
  double paddingRight;
  double fontSize;
  double borderRadius;
  bool bold;
  Color primaryColor;
  Color borderColor;
  Color fontColor;
  double borderWidth;

  Color colorDisabled;

  PhoenixButton(
      {required this.label,
      required this.onPress,
      this.width,
      this.isEnabled = true,
      this.borderRadius = 5,
      this.paddingBottom = 16.0,
      this.paddingLeft = 16.0,
      this.paddingRight = 16.0,
      this.paddingTop = 16.0,
      this.height = 48,
      this.fontSize = 16.0,
      this.borderColor = PhoenixTheme.COLOR_INDIGO_DARK,
      this.borderWidth = 1.0,
      this.primaryColor = PhoenixTheme.COLOR_INDIGO_DARK,
      this.fontColor = PhoenixTheme.COLOR_CLEAR_WHITE,
      this.colorDisabled = PhoenixTheme.COLOR_NEUTRAL_MEDIUM,
      this.bold = false});

  // falta el color del texto para cuando activo/inactivo

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: paddingLeft,
          top: paddingTop,
          right: paddingRight,
          bottom: paddingBottom),
      child: SizedBox(
        width: width ?? double.infinity,
        height: height,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: (isEnabled) ? 1 : 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
                side: BorderSide(
                    width: borderWidth,
                    color: (isEnabled) ? borderColor : colorDisabled),
                primary: (isEnabled) ? primaryColor : colorDisabled),
            onPressed: () async {
              if (isEnabled) {
                await onPress();
              }
            },
            child: Text(
              label,
              style: PhoenixTheme.textStyle(
                  color:
                      (isEnabled) ? fontColor : PhoenixTheme.COLOR_CLEAR_WHITE,
                  size: FONT_SIZE.PARAGRAPH,
                  style: (bold) ? FONT_STYLE.BOLD : FONT_STYLE.REGULAR),
            )),
      ),
    );
  }
}
