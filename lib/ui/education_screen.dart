import 'package:covid_app/widgets/protective_measure_card.dart';
import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  @override
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {

  String barName = "prevention";

  Widget _header() {
    return Container(
      height: 320,
      margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
      child: Column(
        children: [
          Text(
            "Conoravirus disease (COVID-19) advice for the public",
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 19.59,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "Stay aware of the latest information on the ",
                style: TextStyle(
                    fontSize: 16, color: Color(0xff999999), letterSpacing: 0.5),
              ),
              TextSpan(
                text: "COVID-19 outbreak",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff999999),
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text: "outbreak, available on the WHO website and through "
                    "your national and local public health authority."
                    " Most people who become infected experience mild "
                    "illness and recover, "
                    "but it can be more severe for others. "
                    "Take care of your health and protect others"
                    " by doing the following.",
                style: TextStyle(
                    fontSize: 16, color: Color(0xff999999), letterSpacing: 0.5),
              )
            ]),
          )
//          Text(
//            "Stay aware of the latest information on the COVID-19 "
//            "outbreak, available on the WHO website and through "
//            "your national and local public health authority."
//            " Most people who become infected experience mild "
//            "illness and recover, "
//            "but it can be more severe for others. "
//            "Take care of your health and protect others"
//            " by doing the following",
//            style: TextStyle(
//                fontSize: 16, color: Color(0xff999999), letterSpacing: 0.5),
//          ),
        ],
      ),
    );
  }

  Widget _seeMoreButton() {
    return Container(
      margin: EdgeInsets.only(right: 180, left: 25),
      padding: EdgeInsets.fromLTRB(0, 0.4, 0, 14),
      child: RaisedButton(
        onPressed: (){},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0, bottom: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "See more",
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                "|",
                style: Theme.of(context).textTheme.headline3,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Color(0xffffffff),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _protectiveMeasures() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              child: _headerText(
                "Basic protective measures against the new coronavirus",
              )
//              Text(
//                "Basic protective measures against the new coronavirus",
//                style: TextStyle(
//                    fontSize: 28, fontWeight: FontWeight.w600
//                ),),
              ),
          ProtectiveMeasureCard("images/Frame3.png", "Clean your hands often",
              "Wash hands often with soap and water for at least 20s"),
          ProtectiveMeasureCard("images/Frame2.png", "Wear a facemask",
              "You should wear facemask when you are around other people"),
          ProtectiveMeasureCard("images/Frame5.png", "Avoid touching your face",
              "Hands touch many surfaces and can pick up viruses"),
          ProtectiveMeasureCard("images/Frame4.png", "Avoid close contact",
              "Put distance between yourself and other people"),
        ],
      ),
    );
  }

  Widget _headerText(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6
    );
  }

  Widget _otherText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, color: Color(0xff999999)),
    );
  }

  Widget _imageAndText(String img, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageIcon(
          AssetImage(
            img,
          ),
          color: Color(0xffFFCF5C),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color(0xff000000)),
        )
      ],
    );
  }

  Widget _symptomCheck() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerText("Symptom Check"),
          SizedBox(
            height: 22.62,
          ),
          _otherText("Check your symptoms for"),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _imageAndText("icons/Ellipse7.png", "Cold"),
              _imageAndText("icons/Star3.png", "Flu"),
              _imageAndText("icons/Rectangle7.png", "COVID-19"),
            ],
          )
        ],
      ),
    );
  }

  Widget _reportMyStatus() {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerText("Report my Status"),
          SizedBox(
            height: 22.62,
          ),
          _otherText(" If you feel some symptoms or "
              "you are thinking that you may be "
              "infected. Please report your self so "
              "other people can be aware that someone"
              " who is in isolation is nearby them."),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text(
                "COVSTATS",
                style: Theme.of(context).textTheme.headline1
              ),
              Text(
                " gives everyone the",
                style: Theme.of(context).textTheme.headline2),

            ],
          ),
          Text(
              "opportunity to report their symptoms anonymously for the benefit of others",
              style: Theme.of(context).textTheme.headline2),
          SizedBox(
            height: 22,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    "Please report your status",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                color: Color(0xffFF647C),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {},
              ))
        ],
      ),
    );
  }

  Widget _forNavigation() {
    return Container(
      margin: EdgeInsets.only(right: 25, left: 25),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 40,
                  width: 100,
                  child: RaisedButton(
                    child: Text(
                      "Prevention",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    color: Color(0xffffffff),
                    elevation: 0,
                    onPressed: () {
                      setState(() {
                        barName = "prevention";
                      });
                    },
                  )),
              Container(
                height: 5,
                width: 100,
                color: barName == "prevention"?Color(0xffFF647C):Color(0xff00C48C),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 40,
                  child: RaisedButton(
                    child: Text(
                      "Symptoms",
                      style: Theme.of(context).textTheme.headline5
                    ),
                    color: Color(0xffffffff),
                    elevation: 0,
                    onPressed: () {
                      setState(() {
                        barName = "symptoms";
                      });
                    },
                  )),
              Container(
                height: 5,
                width: 100,
                color:barName == "symptoms"?Color(0xffFF647C):Color(0xff00C48C),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 40,
                  child: RaisedButton(
                    child: Text(
                      "Diagnosis",
                      style: Theme.of(context).textTheme.headline5                    ),
                    color: Color(0xffffffff),
                    elevation: 0,
                    onPressed: () {
                      setState(() {
                        barName = "diagnosis";
                      });
                    },
                  )),
              Container(
                height: 5,
                width: 100,
                color: barName == "diagnosis"?Color(0xffFF647C):Color(0xff00C48C),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        title: Center(
            child: Text(
          "Education",
          style: TextStyle(color: Color(0xff000000)),
        )),
        backgroundColor: Color(0xffffffff),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 42,
          ),
          _header(),
          _seeMoreButton(),
          SizedBox(
            height: 30,
          ),
          _forNavigation(),
          SizedBox(
            height: 30,
          ),
          Visibility(visible: barName == "prevention", child: _protectiveMeasures()),
          Visibility(visible: barName == "symptoms", child: _symptomCheck()),
          Visibility(visible: barName == "diagnosis",child: _reportMyStatus()),
          SizedBox(
            height: 37.44,
          ),
        ],
      ),
    );
  }
}
