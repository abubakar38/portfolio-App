import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Welcome login.dart';
import 'bottumNavbar.dart';
import 'feed/HomePage.dart';

class WelcomPageSingin extends StatefulWidget {
  const WelcomPageSingin({Key? key}) : super(key: key);

  @override
  _WelcomPageSinginState createState() => _WelcomPageSinginState();
}

class _WelcomPageSinginState extends State<WelcomPageSingin> {
  Widget welcome = Center(
    child: Text(
      'Welcome !',
      style: TextStyle(
          fontSize: 30,
          letterSpacing: 2,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..shader = LinearGradient(
              colors: <Color>[Color(0xff3FD6A5), Color(0xff139BC7)],
            ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            welcome,
            SizedBox(
              height: 70,
            ),
            Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                     ),
                  child: TextButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>WelcomPageLogin()));
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                   color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "SING UP",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "User name", border: InputBorder.none),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email", border: InputBorder.none),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password", border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),

                  gradient:LinearGradient(
                      colors: [
                        Color(0xff3FD6A5), Color(0xff139BC7)
                      ]
                  )


              ),
              child: IconButton(



                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },


                icon: Icon(Icons.arrow_forward,color: Colors.white,size: 40,),),
            ),
            SizedBox(
              height: 50,
            ),

            Center(
              child: Text(
                'Social Login ',
                style: TextStyle(
                    fontSize: 20,



                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: <Color>[Color(0xff3FD6A5), Color(0xff139BC7)],
                      ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))),
              ),
            ),
            SizedBox(
              height: 30,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(

                      child: IconButton(
                        icon: Icon(Icons.facebook_sharp,color: Colors.deepPurple,size: 50
                          ,),
                        onPressed: (){},
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(

                      child: IconButton(
                        icon: Icon(Icons.gite_outlined,
                          color: Colors.pinkAccent,size: 50
                          ,),
                        onPressed: (){},
                      ),
                    ),
                  ),
                ],


              ),
            )







          ],
        ),
      ),
    );
  }
}
