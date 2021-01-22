import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  Widget _mapOfAffectedArea(){
    return Container(
      margin: EdgeInsets.only(left:14, right:14),
      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),

      height:436,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Color(0xffE4E4E4),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text("COVID-19 Affected Areas", style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600
          ),),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.crop_square,  color: Colors.red,),
                ],
              )
            ],
          )
        ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("World Wide Map", style: TextStyle(color: Color(0xff000000)),)),
        backgroundColor: Color(0xffffffff),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50,),
          _mapOfAffectedArea()
        ],
      ),
    );
  }
}
