import 'package:flutter/material.dart';

class verseWidget extends StatelessWidget {
  String contect;
  int index;

  verseWidget(this.contect, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 8,
      ),
      alignment: Alignment.center,
      child: Text(
        '$contect[$index]',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6,
        ),

    );
  }
}