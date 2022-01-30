import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Welcom Signin page.dart';
import 'bottumNavbar.dart';
import 'feed/HomePage.dart';

class WelcomPageLogin extends StatefulWidget {


  const WelcomPageLogin({Key? key,}) : super(key: key);

  @override
  _WelcomPageLoginState createState() => _WelcomPageLoginState();
}

class _WelcomPageLoginState extends State<WelcomPageLogin> {
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
              height: 100,
            ),
            welcome,
            SizedBox(
              height: 100,
            ),
            Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue),
                  child: TextButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 15),
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
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextButton(
                    style: ButtonStyle(),
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context) =>WelcomPageSingin()));
                    },
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
              height: 50,
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
