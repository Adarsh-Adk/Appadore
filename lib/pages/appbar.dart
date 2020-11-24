import 'package:appadore/Controller/AppBarController.dart';
import'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter_icons/flutter_icons.dart';

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Appbar1 extends StatefulWidget {
  @override
  _AppbarState1 createState() => _AppbarState1();
}

class _AppbarState1 extends State<Appbar1> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Color.fromRGBO(60, 227, 51, 1),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromRGBO(60, 227, 51, 100),
          backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
        ),
      ),
      snap: true,
      pinned: true,
      floating: true,
      actions: [
        IconButton(
            icon: Icon(Icons.search),
              color: Colors.white,
            onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  height:150,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Card(child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Row(children: [
                          SizedBox(width: 10,),
                          Icon(Icons.search),
                          SizedBox(width: 10,),
                          Text("Search")
                        ],),
                      ),),
                      Card(child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Row(children: [
                          SizedBox(width: 10,),
                          Icon(Icons.cancel),
                          SizedBox(width: 10,),
                          Text("cancel")
                        ],),
                      ),)
                    ],
                  ),
                );
              });
            }),
        IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: (){

              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  height:150,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Card(child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Row(children: [
                          SizedBox(width: 10,),
                          Icon(Icons.menu),
                          SizedBox(width: 10,),
                          Text("Menu")
                        ],),
                      ),),
                      Card(child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Row(children: [
                          SizedBox(width: 10,),
                          Icon(Icons.cancel),
                          SizedBox(width: 10,),
                          Text("cancel")
                        ],),
                      ),)
                    ],
                  ),
                );
              });
            }),
      ],
      bottom: TabBar(
        tabs: [
          Tab(
            text: "Personal",
          ),
          Tab(
            text: "Business",
          ),
          Tab(
            text: "Huddles",
          ),
          Tab(
            text: "Calls",
          ),
        ],
      ),
    );
  }
}
class Appbar2 extends StatefulWidget {
  @override
  _Appbar2State createState() => _Appbar2State();
}

class _Appbar2State extends State<Appbar2> {


  @override
  Widget build(BuildContext context) {
    var data=Provider.of<AppBarController>(context);
    return SliverAppBar(
      backgroundColor: Color.fromRGBO(60, 227, 51, 1),
      leading:Row(
        children: [
          Expanded(child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){data.toggleValue();},)),
          SizedBox(width: 10,),
          Expanded(child: Text("1",style: TextStyle(fontSize: 25),)),
        ],
      ),
      centerTitle: true,
      title: Row(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: Transform.rotate(angle: 30 * math.pi / 180,child: IconButton(icon: Icon(Icons.push_pin,color: Colors.white,), onPressed: (){

            showModalBottomSheet(context: context, builder: (context){
              return Container(
                height:150,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Card(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.push_pin_rounded),
                        SizedBox(width: 10,),
                        Text("Pin")
                      ],),
                    ),),
                    Card(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.cancel),
                        SizedBox(width: 10,),
                        Text("Cancel")
                      ],),
                    ),)
                  ],
                ),
              );
            });
          }))),
          Expanded(child: IconButton(icon: Icon(FontAwesome5Solid.volume_mute,color: Colors.white,),onPressed: (){

            showModalBottomSheet(context: context, builder: (context){
              return Container(
                height:150,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Card(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.volume_mute),
                        SizedBox(width: 10,),
                        Text("Mute")
                      ],),
                    ),),
                    Card(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.cancel),
                        SizedBox(width: 10,),
                        Text("Cancel")
                      ],),
                    ),)
                  ],
                ),
              );
            });
          },)),
          Expanded(child: IconButton(icon: Icon(FontAwesome.trash,color: Colors.white,), onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Container(
                height:150,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Card(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.delete),
                        SizedBox(width: 10,),
                        Text("Delete")
                      ],),
                    ),),
                    Card(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.cancel),
                        SizedBox(width: 10,),
                        Text("Cancel")
                      ],),
                    ),)
                  ],
                ),
              );
            });
          })),
          Expanded(child: IconButton(icon: Icon(Icons.archive,color: Colors.white,), onPressed: (){

            showModalBottomSheet(context: context, builder: (context){
              return Container(
                height:150,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Card(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.archive_outlined),
                        SizedBox(width: 10,),
                        Text("Archive")
                      ],),
                    ),),
                    Card(child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(children: [
                        SizedBox(width: 10,),
                        Icon(Icons.cancel),
                        SizedBox(width: 10,),
                        Text("Cancel")
                      ],),
                    ),)
                  ],
                ),
              );
            });
          }))

        ],
      ),
      snap: true,
      pinned: true,
      floating: true,
      actions: [
        IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: (){

              showModalBottomSheet(context: context, builder: (context){
                return Container(
                  height:150,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Card(child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Row(children: [
                          SizedBox(width: 10,),
                          Icon(Icons.menu),
                          SizedBox(width: 10,),
                          Text("Menu")
                        ],),
                      ),),
                      Card(child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Row(children: [
                          SizedBox(width: 10,),
                          Icon(Icons.cancel),
                          SizedBox(width: 10,),
                          Text("Cancel")
                        ],),
                      ),)
                    ],
                  ),
                );
              });
            }),
      ],
      bottom: TabBar(
        tabs: [
          Tab(
            text: "Personal",
          ),
          Tab(
            text: "Business",
          ),
          Tab(
            text: "Huddles",
          ),
          Tab(
            text: "Calls",
          ),
        ],
      ),
    );
  }

}




