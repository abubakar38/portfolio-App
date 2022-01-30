import 'package:flutter/material.dart';

import '../bottumNavbar.dart';
import '../profle page.dart';
import 'feed data modle.dart';
class Newsfead extends StatefulWidget {
  const Newsfead({Key? key}) : super(key: key);

  @override
  _NewsfeadState createState() => _NewsfeadState();
}

class _NewsfeadState extends State<Newsfead> {

  static List img_url=[
'https://wallpaperaccess.com/full/4609567.jpg',
    'https://i.ytimg.com/vi/j43tWSZP3qE/maxresdefault.jpg',
    'https://flutterawesome.com/content/images/2019/08/chitrX.jpg',
    'https://daviruzsystems.com/uploads/images/2021/09/image_750x_6134c5a1ea759.jpg',
    'https://s3.amazonaws.com/www-inside-design/uploads/2019/07/splash-screens-00-examples.png'
  ];
  static List img_dis=[
    'This is My App It usein every one in this words it will very popular app in our workl',
    'This is Onather Project in my offce part',
    'My Mond App , this is most popular app  in best works',
    'This is free Fire Game app Develope be Abubakar it is most populer game in the words',
    'This is Flassh Screen Design by me and also help by flutter Tigers tim ,Thnks to Team'


  ];

  final List<Feedinfo> ourdata=List.generate(img_dis.length, (index) => Feedinfo('${img_url[index]}','${img_dis[index]}'));
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
          'Feed',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),
      endDrawer: Drawer(),
      body: ListView(
        children: [
          Container(
            height: 700,
            child: ListView.builder(
              itemCount: ourdata.length,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(

                  elevation: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          width:double.maxFinite,
                          height: 150,
                          child: Image.network(ourdata[index].img,fit: BoxFit.fill,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(ourdata[index].dis,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            InkWell(
                              child: CircleAvatar(
                                radius: 25,
                                  backgroundImage: NetworkImage(
                                      'https://avatars.githubusercontent.com/u/71599885?s=400&u=4df1b7c368112d29688bcb2d237c6ac9eace1447&v=4')
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Porfaile()));
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Abu Bakar',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                Text('Flutter Devloper',style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),)
                              ],
                            )
                          ],
                        ),
                      )


                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),



    );
  }
}
