import 'package:clone_youtube/pages/create_page.dart';
import 'package:clone_youtube/pages/explore_page.dart';
import 'package:clone_youtube/pages/principal_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
          //visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      //home: PrincipalPage(),
      initialRoute: PrincipalPage.id,
      routes: {
        PrincipalPage.id: (_) => PrincipalPage(),
        ExplorePage.id: (_) => ExplorePage(),
        CreatePage.id: (_) => CreatePage(),
      },
    );
  }
}
