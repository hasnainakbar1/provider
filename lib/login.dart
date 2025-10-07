import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverstate/signup.dart';
import 'package:riverstate/ui.dart';

class logined extends StatefulWidget {
  const logined({super.key});

  @override
  State<logined> createState() => _loginState();

}

class _loginState extends State<logined> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black45,

        title: Text(
          "LOGIN",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          SizedBox(width: 25),
          IconButton(onPressed: (){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const kaka()));
                }, icon: Icon(Icons.arrow_back,color: Colors.white,))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    tileColor: Colors.white,
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    tileColor: Colors.white,
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    tileColor: Colors.white,
                  ),
                  SizedBox(height: 10,),
                 ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    tileColor: Colors.white,
                  ),

                ],
              );

          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: [
            SizedBox(height: 30, width: double.infinity),
            Icon(Icons.food_bank_outlined, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              "M-Banking Apps",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 270,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z0-9@.]'),
                        ),
                      ],
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person), // 👈 user icon
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Don't have an account?",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
            }, child: Text("SignUp"))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
