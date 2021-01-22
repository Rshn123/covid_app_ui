import 'package:flutter/material.dart';

class LiveReportCard extends StatelessWidget {
  final String imagePath, countryName, statNumber;
  final bool downOrUp;

  LiveReportCard(
      {this.imagePath, this.countryName, this.statNumber, this.downOrUp});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(17.5, 15, 17.5, 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Color(0xffE4E4E4))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imagePath,
                width: 46.76,
                height: 46.76,
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                countryName,
                style: TextStyle(fontSize: 22, color: Color(0xff151522)),
              )
            ],
          ),
          Row(
            children: [
              Text(statNumber),
              SizedBox(
                width: 5,
              ),
              downOrUp == true
                  ? Icon(
                      Icons.keyboard_arrow_up,
                      color: Color(0xff00C4BC),
                    )
                  : Icon(Icons.keyboard_arrow_down,
                    color: Color(0xffFF647C)),
            ],
          ),
        ],
      ),
    );
  }
}
