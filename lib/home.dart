import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final string=Provider((ref) {
  return "Hasnain";
},);
final agre=Provider((ref) {
  return 22;
},);

class home extends ConsumerWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final name=ref.watch(string);
    final age=ref.watch(agre);
    return Scaffold(
      body:Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(name,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
          Text(age.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),)

          ],)

      ),
    );
  }
}
