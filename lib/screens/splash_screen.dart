import 'package:flutter/material.dart';
import 'package:schhs_app2021/screens/home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Splash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Normal Logo Splash screen
    /*  Widget example1 = SplashScreenView(
      navigateRoute: HomePage(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "assets/images/circles2.png",
      backgroundColor: Colors.white,
    );*/

    /// Logo with animated Colorize text
    Widget example2 = SplashScreenView(
      navigateRoute: HomePage(),
      duration: 5000,
      imageSize: 150,
      pageRouteTransition: PageRouteTransition.SlideTransition,
      imageSrc: "assets/images/circles2.png",
      text: "Sunshine Coast Health\n\n\nYour app",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 24.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.teal.shade500,
      ],
      backgroundColor: Colors.white,
    );

    /*   /// Logo with Typer Animated Text example
    Widget example3 = SplashScreenView(
      navigateRoute: HomePage(),
      duration: 3000,
      imageSize: 130,
      pageRouteTransition: PageRouteTransition.Normal,
      imageSrc: "assets/images/circles2.png",
      speed: 100,
      text: "Sunshine Coast Health",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );*/

    /* /// Logo with Scale Animated Text example
    Widget example4 = SplashScreenView(
      navigateRoute: HomePage(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "assets/images/circles2.png",
      text: "Sunshine Coast Health",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );*/

    /// Logo with Normal Text example
    /*Widget example5 = SplashScreenView(
      navigateRoute: HomePage(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "assets/images/circles2.png",
      text: "Sunshine Coast Health",
      textType: TextType.NormalText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );*/

    return example2;
  }
}

/*
void main() {
  runApp(SplashPage());
}
class SplashPage extends StatelessWidgetWidget {
  @override
  Widget build(BuildContext context) {

    Center(
      child: Container(width: MediaQuery
          .of(context)
          .size
          .width,
        child: SplashScreenView(
          navigateRoute: HomePage(),
          duration: 3000,
          imageSize: 130,
          imageSrc: "assets/images/circles2.png",
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
  return SplashPage(
  title: 'Splash screen',
  home: example2,
  );

 return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child:AnimatedSplashScreen(

            duration: 2500,
            splash: Image.asset(
              'assets/images/circles2.png',
            ),
            nextScreen: HomePage(),
            splashTransition: SplashTransition.slideTransition,
            backgroundColor: Colors.teal.shade50,
          ),
        ),
      ),
    );



import 'dart:async';
import 'package:flutter/material.dart';
import 'package:schhs_app2021/dynamic_event.dart';


class Splash extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}


class VideoState extends State<Splash> with SingleTickerProviderStateMixin{

  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = const Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => DynamicEvent()));
  }

  @override
  void initState() {
    super.initState();



    animationController = new AnimationController(
        vsync: this, duration: const Duration(seconds: 1));
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              Padding(padding: const EdgeInsets.only(bottom: 30.0),child:new Image.asset('assets/SCHHS_black.png',height: 25.0,fit: BoxFit.scaleDown,))

            ],),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'assets/circles2.png',
                width: animation.value * 250,
                height: animation.value * 250,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

}

class StatelessWidgetWidget {
}

 */
