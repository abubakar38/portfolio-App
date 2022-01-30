import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Porfaile extends StatefulWidget {
  const Porfaile({
    Key? key,
  }) : super(key: key);

  @override
  _PorfaileState createState() => _PorfaileState();
}

class _PorfaileState extends State<Porfaile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Portfolio',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            )),
        leadingWidth: 120,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),
      endDrawer: Drawer(),

      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 200,
                  color: Colors.blueAccent,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 5), color: Colors.white)
                            ],
                            border: Border.all(
                                color: Colors.white.withOpacity(
                                  .7,
                                ),
                                width: 3)),
                        child: CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/71599885?s=400&u=4df1b7c368112d29688bcb2d237c6ac9eace1447&v=4')),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                        ' ABU BAKAR',
                        style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.blueAccent),
                      ),
                              SizedBox(
                                width: 5,
                              ),

                              CircleAvatar(radius: 5,backgroundColor: Colors.green,),
                            ],
                          )),
                    )
                  ],
                ),
                Positioned(
                    top: 160,
                    left: 280,
                    child: Container(

                  child: Row(
                    children: [
                      Icon(Icons.edit,color: Colors.white,),
                      SizedBox(width: 5,),
                      Text('Edit Profile',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ))


              ],
            ),


            Divider(color: Colors.blueAccent,thickness:2,),
            SizedBox(
              height: 8,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text('MY BIO',style: TextStyle(fontSize: 20,color: Color(0xFF3B3B98),fontWeight: FontWeight.bold),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CircleAvatar(radius: 4,),
                    SizedBox(width: 4,),
                      CircleAvatar(radius: 4,),
                      SizedBox(width: 4,),

                      CircleAvatar(radius: 7,),
                      SizedBox(width: 4,),

                      CircleAvatar(radius: 4,),
                      SizedBox(width: 4,),
                      CircleAvatar(radius: 4,),
                  ],),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(-5,-5,),
                                color: Colors.cyanAccent
                            ),  BoxShadow(
                                offset: Offset(3,3,),
                                color: Colors.blueGrey.withOpacity(1)
                            ),
                          ],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                    ),
                    child: Center(

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('''                                  Hey
        Im Abu Bakar Am Expart in Flutter Developer in  Flutter Tigers ''',style: TextStyle(color: Colors.white),),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),


                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("741",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 1,
                            ),
                            Text(' Following')
                          ],
                        ),

                        Column(
                          children: [
                            Text("87K",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 1,
                            ),
                            Text(' Followers')
                          ],
                        ),
                        Column(
                          children: [
                            Text("1852",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 1,
                            ),
                            Text(' Projects')
                          ],
                        )

                      ],
                    ),

                  ),

                  Divider(thickness: 1.5,indent: 40,endIndent: 40,color: Colors.black,),
                  // Divider(thickness: 1.5,indent: 75,endIndent: 75,color: Colors.black,height: 1,),


                  Row(
                    children: [
                      Icon(Icons.home,size: 30,color: Colors.blueAccent,),
                      SizedBox(
                        width: 15,
                      ),
                      Text('I Lives in Brahmanbaria ,Chottogram City',style: TextStyle(
                        fontSize: 16
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      Icon(Icons.work,size: 30,color: Colors.blueAccent,),
                      SizedBox(
                        width: 15,
                      ),
                      Text('Work at Flutter Tigers',style: TextStyle(
                          fontSize: 16
                      ),),
                    ],
                  ), SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      Icon(Icons.phone,size: 30,color: Colors.blueAccent,),
                      SizedBox(
                        width: 15,
                      ),
                      Text('01756074621',style: TextStyle(
                          fontSize: 16
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      Icon(Icons.mail,size: 30,color: Colors.blueAccent,),
                      SizedBox(
                        width: 15,
                      ),
                      Text('mdabubakarsiddk594@gmail.com',style: TextStyle(
                          fontSize: 16
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      Icon(Icons.language,size: 30,color: Colors.blueAccent,),
                      SizedBox(
                        width: 15,
                      ),
                      Text('www.flutter tigers.com.',style: TextStyle(
                          fontSize: 16
                      ),),
                    ],
                  ),
                ],
              ),
            ),





          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.black, // <-- This works for fixed
      //   selectedItemColor: Colors.greenAccent,
      //   unselectedItemColor: Colors.grey,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         size: 30,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.watch, size: 30),
      //       label: 'Expart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_bag, size: 30),
      //       label: 'Project',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people, size: 30),
      //       label: 'Profaile',
      //     ),
      //   ],
      // ),
    );
  }
}
