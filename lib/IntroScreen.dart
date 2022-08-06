import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntroState();
  }
}

class IntroState extends State<Intro> {
  List<Slide> listSlides = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntroSlider(
      slides: listSlides,
      onDonePress: onPressedDone,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listSlides.add(Slide(
      pathImage: "assets/Urbanfoody.png,",

      description: "English Premier League or EPL",
      backgroundImage: "assets/onback.png",
      backgroundOpacity: 0.5

    ));
    listSlides.add(Slide(
      title: "La Liga",
      description: "The Campeonato Nacional de Liga de Primera División",

    ));
    listSlides.add(Slide(
      title: "Bundesliga",
      description: "Federal League",


    ));
    listSlides.add(Slide(
      title: "Serie A",
      description: "Lega Nazionale Professionisti Serie A",


    ));
    listSlides.add(Slide(
      title: "Ligue 1",
      description: "Ligue 1 Conforama",


    ));

  }

  onPressedDone() {}
}
