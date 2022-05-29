import 'package:flutter/material.dart';
import 'package:horizontallist/screens/horizontalListView.dart';
import 'package:provider/provider.dart';
import 'Provider/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          themeMode: themeProvider.themeMode,
          home: Horizontal(),
        );
      });
}
