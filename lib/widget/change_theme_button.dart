import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:idenfit_my_first_app/provider/theme_provider.dart';

class ChangeTehemeButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
