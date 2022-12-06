import 'package:flutter/material.dart';
import 'package:islami_app/My_Theme.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double angle = 0.0;
  int currentIndex=0;
  int counter = 0;
  List<String>Azkar = [
    'سبحان الله',
    "الحمدلله",
    "الله أكبر",

  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var provider = Provider.of<SettingsProvider>(context);

    // TODO: implement build
    return Container(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              height: mediaQuery.height * 0.34,
              
              child: Stack(
                children: [
                  Positioned(
                    child: Image.asset(
                     provider.isDarkMode() ?
                     'assets/images/seb/bbbbbb.png'
                     :
                     'assets/images/head_sebha_logo.png',

                      height: mediaQuery.height * 0.1,
                    ),
                    left: mediaQuery.width * 0.46,
                  ),
                  Positioned(
                    top: 55,
                    left: mediaQuery.width * 0.2,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          onClick();
                        });
                      },
                      child: Transform.rotate(
                        angle: angle,
                        child: Image.asset(
                          provider.isDarkMode()?
                          'assets/images/seb/aaaaaa.png':
                          'assets/images/body_sebha_logo.png'
                          ,
                          height: mediaQuery.height * 0.28,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'عدد التسجبيات',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 30,),

            Container(
              height:80 ,
              width: 70 ,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,

                borderRadius: BorderRadius.circular(25),

              ),
              child: Text(
                counter.toString(),

                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold

                ),
              ),
            ),
            const SizedBox(height: 50,),

            Container(
              height:50 ,
              width: 140,
              alignment: Alignment.center,

              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(25),

              ),
              child: Text(
                Azkar[currentIndex],
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  color: Colors.white,


                ),
              ),
            )
          ]),
    );
  }

  onClick(){
    setState(() {
      counter++;
      angle--;
      if (counter == 34) {
        currentIndex++;
        counter = 0;

      }

      if (currentIndex> Azkar.length-1){
        currentIndex = 0;
      }

    });



  }
}
