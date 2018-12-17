import 'package:flutter/material.dart';
import 'package:flutterlist2/CardClasses.dart';
import 'classes.dart';

class _MyAppList extends State<MyAppList> {
  final List<Person> items;

  _MyAppList({Key key, @required this.items});

  @override
  Widget build(BuildContext context) {
    final title = 'Mixed List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          // Let the ListView know how many items it needs to build
          itemCount: items.length,
          // Provide a builder function. This is where the magic happens! We'll
          // convert each item into a Widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
                    child : PersonCard(item: item,),
                    key: Key(item.id.toString()),
                    onDismissed: (direction) {
                // Remove the item from our data source.
                    setState(() {
                      items.removeAt(index);
                    });

                    // Then show a snackbar!
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text("$item dismissed")));
              },
                    
            );
            })
            )
    );
  }
}

class MyAppList extends StatefulWidget{
  final List<Person> items;
  MyAppList({Key key, @required this.items}) : super(key: key);
  @override
  _MyAppList createState() {
    return _MyAppList(items: items);
  }

}