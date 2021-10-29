import 'package:flutter/material.dart';

class IitJeeMathVideo extends StatefulWidget {
  const IitJeeMathVideo({Key? key}) : super(key: key);

  @override
  _IitJeeMathVideoState createState() => _IitJeeMathVideoState();
}

class _IitJeeMathVideoState extends State<IitJeeMathVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('IIT JEE MATHEMATICS'),
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
