import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

// SongInfo songAtual;

class SongScreen extends StatefulWidget {
  final SongInfo song;

  const SongScreen(this.song);
  @override
  _SongScreenState createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  // void initState() {
  //   super.initState();

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.song.title),
      ),
      body: Container(),
    );
  }
}
