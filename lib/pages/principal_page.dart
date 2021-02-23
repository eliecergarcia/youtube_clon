import 'package:clone_youtube/model/video_card.dart';
import 'package:clone_youtube/widgets/botom_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrincipalPage extends StatefulWidget {
  static String id = 'principal_page';

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  List<VideoCard> videos;

  @override
  void initState() {
    videos = new List();
    videos.addAll([
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '1000000'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '100'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '2000'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '40000'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '100000'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '14450000'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '16464000'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '100534500'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '10045'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '100'),
      VideoCard("3:50", 'Eliecer Coding', 'assets/img/Login Flutter.png',
          'Agregar Fuente de Letra', '1000000'),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          primary: true,
          slivers: [
            SliverAppBar(
              title: Row(
                children: [
                  Image.asset(
                    'assets/img/youtube_logo.png',
                    height: 50.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'YouTube',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.tv),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.bell),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.search),
                  onPressed: () {},
                ),
                GestureDetector(
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundImage: AssetImage(
                      'assets/img/imagen.jpg',
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int position) {
                  String viewVideos = videos[position]
                      .viewsVideo(int.parse(videos[position].views));
                  return Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/img/Login Flutter.png'),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                GestureDetector(
                                  child: CircleAvatar(
                                    radius: 25.0,
                                    backgroundImage: AssetImage(
                                      'assets/img/imagen.jpg',
                                    ),
                                  ),
                                  onTap: () {},
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Text(
                                    '${videos[position].title}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20.0),
                                  ),
                                ),
                                IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: null)
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Eliecer Coding -' +
                                  '$viewVideos ' +
                                  'vistas - hace 1 semana',
                              style: TextStyle(
                                color: Colors.white.withOpacity(.6),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                        Positioned(
                          right: 5,
                          bottom: 95,
                          child: Container(
                            color: Colors.black87,
                            child: Text(
                              '5:40',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: videos.length,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BotomMenuYoutube(),
      ),
    );
  }
}


