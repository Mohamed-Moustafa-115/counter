import 'package:counter/Components/Divider.dart';
import 'package:counter/Components/Text.dart';
import 'package:counter/Vars.dart';
import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  const Txt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Column(
                  children: [
                    titleText(context, "الأذكار بعد السلام من "),
                    titleText(context, " الصلاة"),
                    normalText(context,
                        "((أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله))"),
                    note(context, "(1)"),
                    divider(context),
                    normalText(context,
                        "((اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام))"),
                    note(context, "(1)"),
                    divider(context),
                    normalText(context,
                        "((لاَ إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ [ثلاثاً]، اللَّهُمَّ لاَ مَانِعَ لِمَا أَعْطَيْتَ، وَلاَ مُعْطِيَ لِمَا مَنَعْتَ، وَلاَ يَنْفَعُ ذَا الْجَدِّ مِنْكَ الجَدُّ))"),
                    note(context, "(2)"),
                    divider(context),
                    normalText(context,
                        "((لَا إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ، وَلَهُ الْحَمدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ. لاَ حَوْلَ وَلاَ قُوَّةَ إِلاَّ بِاللَّهِ، لاَ إِلَهَ إِلاَّ اللَّهُ، وَلاَ نَعْبُدُ إِلاَّ إِيَّاهُ, لَهُ النِّعْمَةُ وَلَهُ الْفَضْلُ وَلَهُ الثَّنَاءُ الْحَسَنُ، لَا إِلَهَ إِلاَّ اللَّهُ مُخْلِصِينَ لَهُ الدِّينَ وَلَوْ كَرِهَ الكَافِرُونَ))"),
                    note(context, "(3)"),
                    divider(context),
                    normalText(context,
                        "سُبْحَانَ اللَّهِ، وَالْحَمْدُ لِلَّهِ، وَاللَّهُ أَكْبَرُ (ثلاثاً وثلاثين) لاَ إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ)"),
                    note(context, "(4)"),
                    divider(context),
                    boldNormalText(
                        context, "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم"),
                    normalText(
                      context,
                      " ﴿قُلْ هُوَ اللَّهُ أَحَدٌ* اللَّهُ الصَّمَدُ* لَمْ يَلِدْ وَلَمْ يُولَدْ* وَلَمْ يَكُن لَّهُ كُفُواً أَحَدٌ﴾. ",
                    ),
                    boldNormalText(
                        context, "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم"),
                    normalText(
                      context,
                      "﴿قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ* مِن شَرِّ مَا خَلَقَ* وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ* وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ* وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ﴾.",
                    ),
                    boldNormalText(
                        context, "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم"),
                    normalText(
                      context,
                      "﴿قُلْ أَعُوذُ بِرَبِّ النَّاسِ* مَلِكِ النَّاسِ* إِلَهِ النَّاسِ* مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ* الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ* مِنَ الْجِنَّةِ وَ النَّاسِ﴾. ",
                    ),
                    note(context, "(5)"),
                    divider(context),
                    boldNormalText(
                        context, "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم"),
                    normalText(context,
                        "﴿اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ وَسِعَ كُرْسِيُّهُ السَّمَوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ﴾ [آية الكرسى - البقرة 255] عَقِبَ كلِّ صَلاَةٍ. "),
                    note(context, "(6)"),
                    divider(context),
                    normalText(context,
                        "((لاَ إِلَهَ إِلاَّ اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِي وَيُمِيتُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ)) عَشْرَ مَرّاتٍ بَعْدَ صَلاةِ الْمَغْرِبِ وَالصُّبْحِ"),
                    note(context, "(7)"),
                    divider(context),
                    normalText(context,
                        "((اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْماً نافِعاً، وَرِزْقاً طَيِّباً، وَعَمَلاً مُتَقَبَّلاً)) بَعْدَ السّلامِ مِنْ صَلاَةِ الفَجْرِ"),
                    note(context, "(8)")
                  ],
                ),
              ),
              divider(context),
              note(context, "(1) مسلم، 1/ 414، رقم 591."),
              note(context,
                  "(2) البخاري، 1/ 255، برقم 844، ومسلم، 1/ 414، برقم 593، وما بين المعقوفين زيادة من البخاري، برقم 6473."),
              note(context, "(3) مسلم، 1/ 415 برقم 594."),
              note(context,
                  "(4) مسلم، 1/ 418، برقم 597، وفيه: ((من قال ذلك دبر كل صلاة غفرت خطاياه وإن كانت مثل زبد البحر))."),
              note(context,
                  "(5) أبو داود، 2/ 86، برقم 1523، والترمذي، برقم 2903، والنسائي، 3/ 68، برقم 1335، وانظر: صحيح الترمذي، 2/8. والسور الثلاث يقال لها: المعوذات. انظر: فتح الباري، 9/ 62."),
              note(context,
                  "(6) من قرأها دبر كل صلاة لم يمنعه من دخول الجنة إلا أن يموت. النسائي في عمل اليوم والليلة، برقم 100، وابن السني، برقم، 121، وصححه الألباني في صحيح الجامع، 5/339، وسلسلة الأحاديث الصحيحة، 2/697، برقم 972، والآية رقم 255 من سورة البقرة."),
              note(context,
                  "(7) رواه الترمذي، 5/ 515، برقم 3474، وأحمد، 4/ 227، برقم 17990، وانظر تخريجه في: زاد المعاد 1/300 ."),
              note(context,
                  "(8) ابن ماجه، برقم 925، والنسائي في عمل اليوم والليلة، برقم 102، وانظر: صحيح ابن ماجه، 1/152، ومجمع الزوائد 10/111، وسيأتي برقم 95.")
            ],
          ),
        ),
      ),
    );
  }
}
