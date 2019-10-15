import 'package:flutter/material.dart';
import 'package:flutter_animals/components/all_card_view.dart';
import 'package:flutter_animals/components/digest_card_view.dart';
import 'package:flutter_animals/router.dart';
import 'package:flutter_animals/utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    new Tab(
      text: 'All',
    ),
    new Tab(
      text: 'Digest',
    ),
  ];

  TabController _tabController;

  String value = "";

  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var tabPageIndex = _tabController.index;
    // print(tabPageIndex);

    return Scaffold(
      body: Padding(
        padding: AllAlign,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        size: 37,
                      ),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, infoViewRoute);
                      },
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        IconData(0xe900, fontFamily: 'MenuDot'),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: smallSeparateSize,
                ),
                Padding(
                  padding: HomePageAlign,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '\nCharity Cmapaign',
                      style: headerTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: AllAlign,
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _textEditingController,
                        onSubmitted: (text) {
                          value = text;
                          _textEditingController.text = "";
                        },
                        textInputAction: TextInputAction.search,
                        decoration: SearchBarDecoration,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    DefaultTabController(
                      length: 2,
                      child: TabBar(
                        controller: _tabController,
                        labelStyle: tabTextStyle,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator:
                            CircleTabIndicator(color: Colors.black, radius: 2),
                        isScrollable: true,
                        labelColor: Colors.black,
                        tabs: myTabs,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.tune,
                        size: 20.0,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: AllAlign,
                  child: Container(
                    height: 300,
                    child: Center(
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          allCardView,
                          digestCardView,
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                  child: Row(
                    children: <Widget>[
                      othersCard,
                      Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Container(
                          height: 55.0,
                          width: 150.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Others',
                                style: cardTextStyle,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Rate mushrooms',
                                style: cardContextTextStyle,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                height: 2,
                                width: 77,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      stops: [
                                        0.1
                                      ],
                                      colors: [
                                        Colors.orange[600],
                                      ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: othersRoundedBoxDecoration,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 3.0),
                          child: Icon(
                            Icons.pie_chart_outlined,
                            color: Colors.orangeAccent,
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 16.0),
                  child: Container(
                    height: 75.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        facebookCard,
                        twitterCard,
                        githubCard,
                        Container(
                          height: 55.0,
                          width: 190.0,
                          child: Padding(
                            padding: EdgeInsets.only(right: 24.0),
                            child: RaisedButton(
                              color: Colors.orange,
                              onPressed: () {
                                Navigator.pushNamed(context, homeViewRoute);
                              },
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.5,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(roundedcorner),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
