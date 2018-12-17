import 'package:flutter/material.dart';
import 'package:flutterlist2/classes.dart';

class PersonCard extends StatelessWidget {
  final Person item;
  PersonCard({Key key, @required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text(item.name),
              subtitle: Text(item.lastname),
            ),
            ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Delete'),
                    onPressed: () {
                      
                    },
                  ),
                  FlatButton(
                    child: const Text("Open"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PersonScreen(person: item,)));

                    }
                      ,
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
class PersonScreen extends StatelessWidget {
  final Person person;
  PersonScreen({Key key, @required this.person}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}