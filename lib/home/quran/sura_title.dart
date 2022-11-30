import 'package:flutter/material.dart';
import 'package:islami_app/sura_detailes/sura_detailes_args.dart';
import 'package:islami_app/sura_detailes/sura_detailes_screen.dart';
import 'package:islami_app/sura_detailes/sura_detailes_args.dart';

class SuraTitle extends StatelessWidget {
  String title;
  int index;

  SuraTitle(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraScreenDetailes.routeName,
            arguments: SuraDetailesScreenArgs(name: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
