import 'package:flutter/material.dart';
import 'package:travel_app/main.dart';
import 'package:travel_app/pages/landing_page.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  
  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 5), () {
     Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const LandingPage())
    );
    });
    return Stack(
      children: [
        Container(
          color:mainYellow,
        ),

        const Align(
          alignment: Alignment.center,
          child:Icon(Icons.airplanemode_on,color:Colors.black, size:80)
        ),
        Align(
          alignment:Alignment.center,
          child:SizedBox(
            width:160,
            height:160,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black.withOpacity(0.2)),
              strokeWidth: 10,
            )
          )
        ),
      ],
    );
  }
}
