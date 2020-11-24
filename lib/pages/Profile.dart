import 'package:appadore/Controller/AppBarController.dart';
import 'package:appadore/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:appadore/api/api.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {




  @override
  Widget build(BuildContext context) {
    var data=Provider.of<AppBarController>(context);


    return Container(
      child: FutureBuilder(
        future: fetchProfile(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Map profile = snapshot.data[index];

                  if(profile['name']!=null){return GestureDetector(
                    onLongPress: (){
                      data.toggleValue();
                    },
                    onTap: (){
                      if(data.value==true){
                        data.toggleValue();
                      }
                    },
                    child: Card(
                      child: ListTile(selected: true,
                        title: Text(profile['name']),
                        subtitle: Text(profile['note'],maxLines: 1,),
                        leading:CircleAvatar(
                          backgroundColor: Color.fromRGBO(60, 227, 51, 1),
                          radius: 25,
                          backgroundImage: NetworkImage(profile['image']),
                        ),
                      ),
                    ),
                  );}
                  else return null;
                });
          }
           return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

}
