import 'package:flutter/material.dart';
import 'package:flutter_basic_musicplayer/app/class/utilities.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  // HomeController homeController = new HomeController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Musicas'),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Pausar'),
              onTap: () {
                utilities.pauseOrresume(globalVariables.player);
              },
            );
          },
        ),
      ),
      body: LayoutBuilder(builder: (_, constraints) {
        return Column(
          children: [
            Container(
              height: constraints.maxHeight * .9,
              width: size.width,
              child: ListView.builder(
                itemCount: globalVariables.listSongs.length,
                itemBuilder: (context, index) {
                  // print(index);
                  return ListTile(
                    title: Text(globalVariables.listSongs[index].title),
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (_) => SongScreen(listSongs[index]),
                      //   ),
                      // );
                      utilities.playsong(globalVariables.player, index);
                      globalVariables.actualSong =
                          globalVariables.listSongs[index];
                      Modular.to.pushNamed('/player',
                          arguments: globalVariables.listSongs[index]);

                      // print(listSongs[index].path);
                      // var duration = player.setFilePath(listSongs[index].path);
                    },
                  );
                },
              ),
            ),
            InkWell(
              child: Container(
                height: constraints.maxHeight * .1,
                width: constraints.maxWidth,
                color: Colors.cyan,
                child: Center(
                  child: Observer(builder: (_) {
                    return globalVariables.actualSong == null
                        ? Text('Em desenvolvimento')
                        : Text(globalVariables.actualSong.title);
                  }),
                ),
              ),
              onTap: () {
                // Navigator.of(context).push(
                //         MaterialPageRoute(
                //           builder: (_) => SongScreen(listSongs[index]),
                //         ),
                //       );
              },
            ),
          ],
        );
      }),
    );
  }
}
