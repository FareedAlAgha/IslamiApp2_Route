import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/Hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;


    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/main_background.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
            appBar: AppBar(
              title: Text(args.title),
            ),
            body:
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Card(
                elevation: 12,
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(args.contect,
                      textDirection: TextDirection.rtl,),
                  ),
                ),

              ),
            )));
  }
}