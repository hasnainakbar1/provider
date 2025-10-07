import 'package:flutter/material.dart';

class asmattt extends StatefulWidget {
  const asmattt({super.key});

  @override
  State<asmattt> createState() => _asmatState();
}

class _asmatState extends State<asmattt> {
  
  var asmat=["asmat","alam","Hasnian","saqlain","amjad","asmat","alam","Hasnian","saqlain","amjad"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome alam khan"),
        
      ),
      body: ListView.builder(
        itemCount: asmat.length,
        itemBuilder: (context, index) {
        return Padding(padding: EdgeInsets.only(bottom: 4,left: 4,right: 4),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Text("$index"),
              ),
              title: Text("${asmat[index]}"),
              trailing: Icon(Icons.call),
            ),
          )

        );
      },),
    );
  }
}
