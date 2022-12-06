import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/Hadeth.dart';
import 'package:islami_app/home/hadeth/hadeth_title.dart';
import 'package:islami_app/hadeth_deatils/hadeth_details.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth>allHadethList=[];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty)
      loadHadethFile();

    // TODO: implement build
    return Container(
        child:
        Column(
          children: [
            Image.asset('assets/hadeth_logo.png'),
            Expanded(

              child: ListView.separated(itemBuilder: (BuildContext,index){
                return HadethTitle(allHadethList[index]);
              },    itemCount: allHadethList.length,
                separatorBuilder: (_, index) {
                  return Container(
                    color: Theme.of(context).accentColor,
                    width: double.infinity,
                    height: 1,
                    margin: EdgeInsets.symmetric(horizontal: 64),
                  );
                },

              ),
            )
          ],
        )

    );
  }

  void loadHadethFile() async {
    List<Hadeth>HadethList=[];
    String contect = await rootBundle.loadString('assets/ahadeth.txt');
    List<String>allHadethContect=contect.split('#');
    for (int i=0; i<allHadethContect.length;i++) {
      String SingleHadeth = allHadethContect[i].trim();

      int indexOFFirstLine = SingleHadeth.indexOf('\n');

      String title = SingleHadeth.substring(0, indexOFFirstLine);
      String contect = SingleHadeth.substring(indexOFFirstLine + 1);
      Hadeth h = Hadeth(title, contect);
      HadethList.add(h);
        

      //List<String>SingleHadethLine=SingleHadeth.split('\n');
      //String title = SingleHadethLine[0];
      //SingleHadethLine.removeAt(0);
      //String contect = SingleHadethLine.join('\n');


      allHadethList = HadethList;
      setState(() {

      });
    }


  }

}