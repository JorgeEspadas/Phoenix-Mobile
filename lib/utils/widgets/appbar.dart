import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phoenix_mobile/themes/phoenix.dart';

PreferredSizeWidget PhoenixAppBar(
        {title,
        centerTitle = true,
        elevation = 0.0,
        backgroundColor,
        textSize = FONT_SIZE.H3,
        toolbarHeight = 56,
        textColor,
        leading,
        shadowColor,
        List<Widget>? actions}) =>
    AppBar(
        toolbarHeight: toolbarHeight * 1.0,
        automaticallyImplyLeading: (leading != null),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: (backgroundColor == null)
                ? PhoenixTheme.COLOR_CLEAR_WHITE
                : backgroundColor),
        backgroundColor: (backgroundColor == null)
            ? PhoenixTheme.COLOR_CLEAR_WHITE
            : backgroundColor,
        elevation: elevation,
        shadowColor: shadowColor,
        centerTitle: centerTitle,
        leadingWidth: 64,
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: leading,
        ),
        actions: actions,
        title: (title == null)
            ? title
            : Text(title,
                style: PhoenixTheme.textStyle(
                  size: FONT_SIZE.H2,
                )));
