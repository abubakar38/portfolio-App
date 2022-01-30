import 'package:flutter/material.dart';
import 'package:portfoliu_app/porotfolio/pdata_modle.dart';

class PorjectPage extends StatefulWidget {
  const PorjectPage({Key? key}) : super(key: key);

  @override
  _PorjectPageState createState() => _PorjectPageState();
}

class _PorjectPageState extends State<PorjectPage> {
  static List Title = [
    "Calculator UI",
    "Facebook UI",
    "TikTok UI",
    "Imo UI",
    "DarazApp UI",

  ];
  static List Subtitle = [
    "this is nice ",
    "Thats is wosusom UI ",
    "This is The Tiktok Ui design  ",
    "This is The Imo Ui design  ",
    "This is The Daraz app Ui design  ",
  ];
  static List Dis = [
      "This is calcolator app  in this section",
      "This is faceBook Ui design this is a nice profile pager in facebook",
      "This is Tiktok Ui design this is a nice profile pager in Tiktok",
      "This is IMo Ui design this is a nice profile pager in IMo",
      "This is Daraz app Ui design this is a nice profile pager in Daraz appp",
  ];

  static List Love = [
    "125",
    "342",
    "852",
    "556",
    "642",
  ];

  static List url = [
    "https://i.imgur.com/pqXCk5G.jpg",
'https://www.socialsamosa.com/wp-content/uploads/2019/05/fb-ui.jpg',
    'https://i.imgur.com/JOw0ad6.jpg',
    'https://i.ytimg.com/vi/EDb3x1SwzbI/maxresdefault.jpg',
    'https://www.thenerdmag.com/wp-content/uploads/2019/09/Daraz-Appyversary.jpg'
  ];
  final List<PdataModlae> data = List.generate(
      Title.length,
      (index) => PdataModlae('${Title[index]}', '${Subtitle[index]}',
          '${Dis[index]}', '${Love[index]}', '${url[index]}'));

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
          'Projects',
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
            Container(
              height: 680,
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 12,
                        child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    data[index].title,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.blue),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(data[index].subtitle,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(data[index].dis),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(40)),
                                    child: Center(child: Text('View',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.blue,
                                      ),
                                      Text(data[index].love),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(child:
                             Container(
                          child: Image.network(data[index].img,fit: BoxFit.fill,),
                        ),
                        ),
                      ],
                    ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
