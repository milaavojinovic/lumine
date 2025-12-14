import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lumine/providers/theme_provider.dart';
import 'package:lumine/widgets/subtitle_text.dart';
import 'package:lumine/widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SubtitleTextWidget(label: "Hello"),
            const TitelesTextWidget(label: "Hello this is me again"),
            SwitchListTile(
              title: Text(
                themeProvider.getisDarkTheme ? "Dark Theme" : "Light Theme",
              ),
              value: themeProvider.getisDarkTheme,
              onChanged: (value) {
                themeProvider.setDarkTheme(themeValue: value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
