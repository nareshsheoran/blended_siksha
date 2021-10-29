import 'package:flutter/material.dart';

class UpcomingPhysicsClassVideo extends StatefulWidget {
  const UpcomingPhysicsClassVideo({Key? key}) : super(key: key);

  @override
  _UpcomingPhysicsClassVideoState createState() =>
      _UpcomingPhysicsClassVideoState();
}

class _UpcomingPhysicsClassVideoState extends State<UpcomingPhysicsClassVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('UPCOMING PHYSICS CLASS'),
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
