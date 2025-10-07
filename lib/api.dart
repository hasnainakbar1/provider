import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverstate/future.dart';

class asmat extends ConsumerWidget {
  const asmat({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var datta=ref.watch(khan);
    return Scaffold(


      floatingActionButton: FloatingActionButton(onPressed: () {

        ref.invalidate(khan);

      },
      child: Icon(Icons.refresh),
      ),



      body: datta.when(

        skipLoadingOnRefresh: false,
        data: (data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
          return Text(data[index].title.toString());
        },);


      }, error: (error, stackTrace) {

        return Center(
          child: Text("${error.toString()}"),
        );


      }, loading: () {

        return Center(
          child: CircularProgressIndicator(),
        );

      },
      ),
    );
  }
}
