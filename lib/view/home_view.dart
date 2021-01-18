import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_dashboard/widget/home_card.dart';
import 'package:pay_dashboard/widget/offer_card.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paper mart',
      home: Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.center,
            child: Text(
              'Pay',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          actions: [Icon(Icons.more_vert_sharp)],
        ),
        body: SafeArea(child: Dashboard()),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  final containerHeight = 0.25;
  final iconSize = 40.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      child: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              child: OfferCard(),
            )),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * containerHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeCard(
                        title: 'Mobile',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/mobile.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                      HomeCard(
                        title: 'Landline',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/landline.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                      HomeCard(
                        title: 'Data Card',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/datacard.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * containerHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeCard(
                        title: 'Internet',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/wifi.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                      HomeCard(
                        title: 'Cable TV',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/cabletv.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                      HomeCard(
                        title: 'Entertainment',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/video-clip.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * containerHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeCard(
                        title: 'Electric',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/electric.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                      HomeCard(
                        title: 'School',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/book.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                      HomeCard(
                        title: 'Church',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/church.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * containerHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomeCard(
                        title: 'Donation',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/donation.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                      HomeCard(
                        title: 'Merchants',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/merchant.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                      HomeCard(
                        title: 'Utility',
                        fontsize: 15.0,
                        textColors: Colors.black,
                        icons: 'images/utility.svg',
                        iconHeight: iconSize,
                        iconWidth: iconSize,
                        buttonHeight: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ]),
    );
  }
}
