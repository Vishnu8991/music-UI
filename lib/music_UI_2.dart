import 'package:flutter/material.dart';


class Player2 extends StatefulWidget{
  @override
  State<Player2> createState() => _Player2State();
}

class _Player2State extends State<Player2> {
  @override
  
  var img = [
    "https://i.scdn.co/image/ab67616d00001e0239d9c58f304a483916bcf189",
    "https://i.scdn.co/image/ab67706c0000da84eae8f650005924d5de899d4e",
    "https://i.scdn.co/image/ab67706c0000da847cd4fe0570efd87a25246396",
    "https://i.scdn.co/image/ab67706c0000da849e0d81f8590c5398416ea6ca",
    "https://i.scdn.co/image/ab67706f0000000225d50fa7cc51b307364050f5",
    "https://i.scdn.co/image/ab67706c0000da841dad98bedc822c9abf4a194c"
  ];

  var mimg = [
    "https://i.scdn.co/image/ab6761610000e5eb75348e1aade2645ad9c58829",
    "https://i.scdn.co/image/ab67616d00001e02f46b9d202509a8f7384b90de",
    "https://i.scdn.co/image/ab67616d0000b2730e36690135fa1a30d048e604",
    "https://i.scdn.co/image/ab67706c0000da844d91cad10bf0583bc908295d",
    "https://i.scdn.co/image/ab6761610000e5ebdd746a334ae236bb7a95c1d5",
    "https://i.scdn.co/image/ab67616d0000b273db3bc20de33730b582169c87",
    "https://i.scdn.co/image/ab67706c0000da844343967b3ec617871c303473",
    "https://i.scdn.co/image/ab67616d00001e023bfc2617fdd1ff939930ce0e",
    "https://i.scdn.co/image/ab67706c0000da845dcb920c1e6eed3210b7532b",
    "https://pbs.twimg.com/media/Db975paX4AABiUL.jpg"
  ];

  var song = [
    "Baby Don't Hurt Me",
    "Love Yourself",
    "Calm Down",
    "What Jhumka ?",
    "Ariyathe Ariyathe",
    "Katrae En Vaasal",
    "Shape of You",
    "Mudhal Nee",
    "Tum Kya Mile",
    "I'm Good"
  ];

  var names = [
    "David Guetta",
    "Justin Bieber",
    "Selena Gomez",
    "Arijit Singh",
    "K.J. Yesudas",
    "A.R. Rahman",
    "Ed Sheeran",
    "Sid Sriram",
    "Shreya Ghoshal ",
    "David Guetta"
  ];

  var index = 0;

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Musically",style: TextStyle(color: const Color.fromARGB(255, 253, 229, 12),fontSize: 29),),centerTitle: true,backgroundColor: Colors.black,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text("Based on your recent listening",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),),
              SizedBox(height: 5,),
           Container(height: 220,
             child: Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10, top: 10, bottom: 10),
                      child: Card(color: Colors.black,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(img[index])),
                        ),
                      ),
                    );
                  },itemCount: img.length,scrollDirection: Axis.horizontal,),
                ),
           )   ,
            SizedBox(height: 20,),
              Text("Recommended for you",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),
              SizedBox(height: 10,),

              Container(
                height: 650,
             child: ListView.builder(itemBuilder: (context, index) {
               return Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Container(
                   decoration: BoxDecoration(color: Colors.grey[900],
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(right: 15, left: 1),
                     child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 55,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(mimg[index],fit: BoxFit.cover,))),
                          SizedBox(width: 20,),
                        Container(
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(song[index],style: TextStyle(fontSize: 17, color: Colors.white),),
                              Text(names[index],style: TextStyle(fontSize: 15, color: Colors.grey)),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.star_border,color: Colors.white,),
                              SizedBox(width: 20,),
                              Icon(Icons.download, color: Colors.white,)
                            ],
                          ),
                        )
                      ],
                     ),
                   ),
                 ),
               );
             },itemCount: mimg.length,physics: NeverScrollableScrollPhysics(),),
           )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          selectedItemColor: Color.fromARGB(255, 253, 229, 12),
          currentIndex: index,
          onTap: (tappedIndex){
            setState(() {
              index = tappedIndex;
            });
          },
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add,),
              label: "Library"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              label: "Profile"),
          ]),
    );
  }
}