import 'package:covid_app/constants.dart';
import 'package:covid_app/widgets/custom_live_report_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Widget _ratioOfRecoveryDetails(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 330,
      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
      margin: EdgeInsets.fromLTRB(14, 15, 14, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Color(0xffE4E4E4)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ratio of Recovery", style: TextStyle(color: Color(0xff171725), fontSize: 17, fontWeight: FontWeight.bold),),
              Text("View Details", style: TextStyle(color: Color(0xff151522), fontSize: 11),)
            ],
          ),
          SizedBox(height: 40,),
          Center(
            child: Image.asset("images/Group31.png", width: 140,height: 140,),
          ),
          SizedBox(height: 35,),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(children: [
                    Icon(Icons.brightness_1, color: Color(0xffFF647C),size: 15,),
                    SizedBox(width: 5,),
                    Text("338,255")
                  ],),
                  SizedBox(height: 5,),
                  Text("Affected", style: TextStyle(fontSize: 13,color: Color(0xff44444F)),)

                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(children: [
                    Icon(Icons.brightness_1, color: Color(0xffFFCBD3),size: 15,),
                    SizedBox(width: 5,),
                    Text("96,958")
                  ],),
                  SizedBox(height: 5,),
                  Text("Recovered", style: TextStyle(fontSize: 13, color: Color(0xff44444F)),)

                ],
              ),
            ],
          ),)
        ],
      ),
    );
  }

  Widget _cardForData(String caseName, String caseNumber) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
      width: 158,
      height: 207.78,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Color(0xffE4E4E4))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                caseName,
                style: TextStyle(color: Color(0xff999999), fontSize: 17),
              ),
              ImageIcon(
                AssetImage('icons/trending-up.png'),
                color: Colors.red,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            caseNumber,
            style: TextStyle(fontSize: 28, color: Color(0xff151522)),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'images/Group83.png',
          )
        ],
      ),
    );
  }
  
  Widget _liveReports(){
    return Container(
      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
      margin: EdgeInsets.fromLTRB(14, 15, 14, 15),

      height: 560,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Color(0xffE4E4E4))
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Live Reports", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("Top five countries", style:TextStyle(fontSize: 13, color: Color(0xff999999))),
              ],
            ),
            Container(
              height: 32,
              width: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Color(0xffE4E4E4))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_back_ios, size: 10, color: Color(0xffE4E4E4),),
                  Icon(Icons.arrow_forward_ios, size: 10,color: Color(0xff999999),),
                ],
              ),
            )
          ],

          ),
          SizedBox(height: 36.6,),
          LiveReportCard(imagePath: "images/FlagofChina.png", countryName: "China", statNumber:"81,054", downOrUp: true,),
          SizedBox(height: 13,),
          LiveReportCard(imagePath: "images/FlagofItaly.png", countryName: "Italy", statNumber:"59,138", downOrUp: false,),
          SizedBox(height: 13,),
          LiveReportCard(imagePath: "images/FlagofUnitedStates.png", countryName: "USA", statNumber:"38,167", downOrUp: false,),
          SizedBox(height: 13,),
          LiveReportCard(imagePath: "images/FlagofSpain.png", countryName: "Spain", statNumber:"28,603", downOrUp: false,),
          SizedBox(height: 13,),
          LiveReportCard(imagePath: "images/FlagofGermany.png", countryName: "Germany", statNumber:"24,806", downOrUp: false,),

          //downOrUp: true denote increasing
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Center(
          child: Text(
            "COVID-19",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(margin: EdgeInsets.only(left: 1)),
              _cardForData("Total Cases", "368,222"),
              _cardForData("Recovered", "101,069"),
              Container(margin: EdgeInsets.only(right: 0)),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(margin: EdgeInsets.only(left: 1)),
              _cardForData("Active Cases", "244,375"),
              _cardForData(
                "Total Death",
                "251,053",
              ),
              Container(margin: EdgeInsets.only(right: 0)),
            ],
          ),
          _ratioOfRecoveryDetails(),
          _liveReports(),
        ],
      ),

    );
  }
}
