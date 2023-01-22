import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp/provider/website_provider.dart';
import 'package:todolistapp/screens.dart/list_of_websites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WebsiteProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: listofWebsites(),
      ),
    );
  }
}
