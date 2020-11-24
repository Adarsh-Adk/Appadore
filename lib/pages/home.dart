import 'package:appadore/Controller/AppBarController.dart';
import 'package:appadore/pages/Profile.dart';
import 'package:appadore/pages/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _scrollController;
  @override




  @override
  Widget build(BuildContext context) {
    var data=Provider.of<AppBarController>(context);
    bool isPressed=data.value;
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerboxscrolled) {
            return <Widget>[
              isPressed?Appbar2():Appbar1()
            ];
          },
          body: TabBarView(children: [
            Profile(),
            Profile(),
            Profile(),
            Profile(),
          ]),
        ),
      ),
    );

  }

}
