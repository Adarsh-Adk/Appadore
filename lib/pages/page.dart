import 'package:flutter/material.dart';
import 'package:appadore/api/api.dart';

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: fetchProfile(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Map profile = snapshot.data[index];
                  if (profile['name'] != null) {
                    return Card(
                      child: ListTile(
                          // title: Text(profile['name']),
                          leading: Image(
                        image: NetworkImage(profile['image']),
                      )),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                });
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
