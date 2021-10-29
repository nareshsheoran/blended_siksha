import 'package:blended_siksha/courses/model/neet_ug_first_model.dart';
import 'package:flutter/material.dart';

class NeetUgFirstWidget extends StatelessWidget {
  final NeetUgFirstModel neetUgFirstModel;
  const NeetUgFirstWidget(this.neetUgFirstModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(neetUgFirstModel.img),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              neetUgFirstModel.name,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
