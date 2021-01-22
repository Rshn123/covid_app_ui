import 'package:flutter/material.dart';

class ProtectiveMeasureCard extends StatelessWidget {
  final String img;
  final String title;
  final String description;

  ProtectiveMeasureCard(this.img, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              img,
              width: 85,
              height: 85,
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 13, color: Color(0xff999999)),
                  )
                ],
              ),
            ),
            Divider(
              color: Color.fromRGBO(228, 228, 228, 0.6),
            )
          ],
        ));
  }
}
