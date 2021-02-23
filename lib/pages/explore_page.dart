import 'package:clone_youtube/widgets/botom_menu.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  static String id = "explore_page";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Hola Mundo'),
        ),
        bottomNavigationBar: BotomMenuYoutube(),
      ),
    );
  }
}
