import 'package:covid_app/constants.dart';
import 'package:covid_app/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class StartUpScreen extends StatefulWidget {
  @override
  _StartUpScreenState createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(
      Slide(
        backgroundColor: Color(0xffFFFFFF),
        centerWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/MaskGroup.png',
              height: 220,
              width: 220,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Fever",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "The severity of COVID-19 symptoms can range \n from very mild to severe. Some people have no \n"
              "symptoms. People who are older or have \n existing chronic medical conditions",
              style: TextStyle(color: Color(0xff999999)),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
    slides.add(
      Slide(
        backgroundColor: Color(0xffFFFFFF),
        centerWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/MaskGroupCough.png',
              height: 220,
              width: 220,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Cough",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Such as heart or lung disease or diabetis, may \n be at higher risk of serious illness"
              "this is \nsimilar to wat is seen with other respiratory illnesses, such influenza",
              style: TextStyle(color: Color(0xff999999)),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
    slides.add(
      Slide(
        backgroundColor: Color(0xffFFFFFF),
        centerWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/MaskGroupBreathing.png',
              height: 220,
              width: 220,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Breathing Difficulty",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Contact your doctor or clinic right away if you \n have COVID-19"
              "symptoms, you've been exposed to someone with COVID-19, or you"
              "\n live in or have traveled from an"
              "area with \n ongoing community spread of COVID-19",
              style: TextStyle(color: Color(0xff999999)),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  void onDonePress() {
    Navigator.pushNamed(context,bottomNavigationRoute);
  }

  Widget renderNext() {
    return Text("Next");
  }

  Widget renderDone() {
    return Text("Done");
  }

  Widget renderSkip() {
    return Text("Skip");
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,

      //Skip
      renderSkipBtn: this.renderSkip(),
      colorSkipBtn: Color(0x33000000),
      highlightColorSkipBtn: Color(0xff000000),

      renderNextBtn: this.renderNext(),

      // Done button
      renderDoneBtn: this.renderDone(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Color(0xffE4E4E4),
      colorActiveDot: Color(0xffFF647C),
      sizeDot: 13.0,

      // Show or hide status bar
      shouldHideStatusBar: true,
      backgroundColorAllSlides: Colors.grey,
    );
  }
}
