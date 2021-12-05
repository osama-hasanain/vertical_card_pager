import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class MyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> titles = ["", "", "", "", "", "","" ];

    final List<Widget> images = [
      MyCard('https://as2.ftcdn.net/v2/jpg/03/03/49/91/1000_F_303499154_UySwNuwcwW4QZeWzghfyONom8oEzM2fg.jpg'),
      MyCard('https://image.freepik.com/free-photo/close-up-devious-african-american-male-model-having-idea-scheming-something-steeple-fingers-smiling-sly-standing-pink-background_1258-76962.jpg'),
      MyCard('https://image.freepik.com/free-photo/photo-attractive-man-with-stylish-hairdo-has-stubble-looks-directly-seriously-wears-checkered-shirt-isolated-white-wall-confident-male-manager-works-models-indoor_273609-14941.jpg'),
      MyCard('https://image.freepik.com/free-photo/portrait-handsome-european-male-student-has-gentle-smile-face-happy-hear-pleasant-news-stands-delighted-wears-round-spectacles-orange-jumper_273609-45004.jpg'),
      MyCard('https://image.freepik.com/free-photo/photo-amazed-young-european-man-keeps-hands-mouth-stares-shocked-camera-reacts-unexpected-relevation_273609-45892.jpg'),
      MyCard('https://as2.ftcdn.net/v2/jpg/03/68/83/23/1000_F_368832380_7Kre20do10tHhuQJvQY4H1NWyYqJkJbh.jpg'),
      MyCard('https://image.freepik.com/free-photo/confident-man-saying-congrats-winking-pointing-you-standing-pleased-blue-background-smiling_1258-66578.jpg'),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: VerticalCardPager(
                      titles: titles,  // required
                      images: images,  // required
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold), // optional
                      onPageChanged: (page) { // optional
                      },
                      onSelectedItem: (index) { // optional
                      },
                      initialPage: 0, // optional
                      align : ALIGN.CENTER, // optional
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget MyCard(String img) =>
      Card(
        elevation: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image(
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          image: NetworkImage(img)
        ),
      );
}
