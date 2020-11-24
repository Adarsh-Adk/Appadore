import 'package:appadore/Controller/AppBarController.dart';
import 'package:appadore/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_)=>AppBarController(),),
      ],
    child: MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Home(),
    ));
  }
}
