import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/Hadeth.dart';
import 'package:islami_app/hadeth_deatils/hadeth_details.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;
  HadethTitle(this.hadeth);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,HadethDetailsScreen.routeName,
            arguments: hadeth);


      },
      child: Container(
        padding: EdgeInsets.all(4),
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headline4,
          ),
        ),

    );
  }
}