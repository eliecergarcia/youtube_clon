import 'package:clone_youtube/pages/explore_page.dart';
import 'package:clone_youtube/pages/principal_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotomMenuYoutube extends StatefulWidget {
  @override
  _BotomMenuYoutubeState createState() => _BotomMenuYoutubeState();
}

class _BotomMenuYoutubeState extends State<BotomMenuYoutube> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home),
          label: "Principal",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.compass),
          label: "Explorar",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.plusCircle,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions_outlined),
          label: "Suscripciones",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_add_outlined),
          label: "Biblioteca",
        ),
      ],
      currentIndex: _selectIndex,
      selectedItemColor: Colors.white,
      onTap: (index) {
        setState(() {
          _selectIndex = index;

          switch (_selectIndex) {
            case 0:
              //Navigator.pushNamed(context, PrincipalPage.id);
              Navigator.pushReplacementNamed(context, PrincipalPage.id);
              break;
            case 1:
              //Navigator.pushNamed(context, ExplorePage.id);
              Navigator.pushReplacementNamed(context, ExplorePage.id);
              break;
            case 2:
              MaterialPage(
                  child: Container(
                color: Colors.red,
                height: 200.0,
                width: 200.0,
              ));
              break;
            default:
          }
        });
      },
    );
  }
}
