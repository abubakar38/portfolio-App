

import 'package:flutter/material.dart';

import 'datamodel.dart';
class IntarestPage extends StatefulWidget {
  const IntarestPage({Key? key}) : super(key: key);

  @override
  _IntarestPageState createState() => _IntarestPageState();
}

class _IntarestPageState extends State<IntarestPage> {

  static List Topic=[
    'Aplication Program Interface',
    'Android Development',
    'IOS Development',
    'Web Development',
    'DeskTop Apps Development',
    'Algorithom',
    "Dart Pograming"
  ];
  static List mypost=[
    '258',
    '789',
    '865',
    '158',
    '425',
    '388',
    '147',
  ];
  static List Like=[
    '14k',
    '52k',
    '47k',
    '18k',
    '87k',
    '52k',
    '7M',
  ];
  static List url=[
'https://previews.123rf.com/images/melpomen/melpomen1906/melpomen190600246/124462135-api-concept-with-businessman-on-a-dark-blue-background.jpg',
    'https://blog.internshala.com/wp-content/uploads/2020/07/android-lover-wallpaper-preview.jpg',
    'https://dafq4moetmy65.cloudfront.net/cdn/ff/BV4l3afX1IznaH2qt7haXP646RUb2_x1GrYEAsm-EAw/1489756680/public/2017-03/main_11.jpg',
    'https://media.istockphoto.com/vectors/modern-flat-design-isometric-concept-of-digital-marketing-for-banner-vector-id1261941924?k=20&m=1261941924&s=612x612&w=0&h=RXW68yX8mikpH6NRLgiQheJRJ3beCMBocspP6W90I9c=',
    'https://www.jadeglobal.com/sites/default/files/2020-09/Application-Developmen-min.jpg',
    'https://thumbs.dreamstime.com/b/abstract-background-wavy-algorithm-analyze-data-blurred-lines-quantum-cryptography-analytics-algorithms-big-design-204824970.jpg',
    'https://codewithandrea.com/img/banners/social-banner.png'
  ];

  final List<DataModle> mydat=List.generate(mypost.length, (index) => DataModle( '${Topic[index]}','${mypost[index]}','${Like[index]}','${url[index]}'));


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
          'Interests',
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
          width: double.maxFinite,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/71599885?s=400&u=4df1b7c368112d29688bcb2d237c6ac9eace1447&v=4')
              ),
              Text('Abu Bakar',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              Text('Flutter Developer',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),


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

            ],
          ),
          



        ),

        Container(
          height: 440,
          child: ListView.builder(
            shrinkWrap: true,
              itemCount: mydat.length,
              itemBuilder: (context,index){
            return Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Card(
                  elevation: 8,
                  
                  child: Row(

                    children: [
                      Expanded(child:
                      Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(mydat[index].topic,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(mydat[index].post,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),
                                  Text('Post',style:TextStyle(
                                    color: Colors.grey,
                                  ) ),
                                ],
                              ),

                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(mydat[index].like,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),
                                  Text('Like',style:TextStyle(
                                    color: Colors.grey,
                                  ) ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                  ),),

                      Expanded(
                        child: Container(

                          child: Image.network(mydat[index].img,fit: BoxFit.cover,height: double.maxFinite,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          })
        )
      ],),

    );
  }
}
