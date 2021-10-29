import 'package:flutter/material.dart';

class LiveClassPhysicsVideo extends StatefulWidget {
  const LiveClassPhysicsVideo({Key? key}) : super(key: key);

  @override
  _LiveClassPhysicsVideoState createState() => _LiveClassPhysicsVideoState();
}

class _LiveClassPhysicsVideoState extends State<LiveClassPhysicsVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LIVE CLASS PHYSICS'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
