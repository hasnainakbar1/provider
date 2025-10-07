 import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

var khan=FutureProvider<List<postmodel>>((ref) async{

  final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
 if(response.statusCode==200){
   List<postmodel> posts=[];
   var data=jsonDecode(response.body);
   for(var i in data){

     posts.add(postmodel.fromJson(i));
   }
   return posts;

 }else{

throw "some thing went wrong";


 }






},);



class postmodel {
  int? userId;
  int? id;
  String? title;
  String? body;

  postmodel({this.userId, this.id, this.title, this.body});

  postmodel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}









