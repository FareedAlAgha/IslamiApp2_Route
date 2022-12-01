import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/sura_title.dart';
import 'package:islami_app/My_Theme.dart';
import 'package:islami_app/sura_detailes/sura_detailes_args.dart';
import 'package:islami_app/sura_detailes/sura_detailes_screen.dart';
import 'package:flutter/src/material/theme.dart';

class QuranTab extends StatelessWidget {
  String t = 'Sura Name';
  List<String> suraName = [
    "الفاتحة",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 2,
              child: Image.asset('assets/images/qur2an_screen_logo@2x.png')),
          Container(
            color: Theme.of(context).primaryColor,
            height: 2,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Sura Name',
              style: TextStyle(fontSize: 28,color: Colors.white ),

            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            height: 2,
          ),
          Expanded(
            flex: 5,
            child: ListView.separated(
              itemBuilder: (_, index) {
                return SuraTitle(suraName[index], index);
              },
              itemCount: suraName.length,
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
      ),
    );
  }
}
