import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: pageContend(),
    );
  }
  Widget pageContend(){
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
           SafeArea(
             child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
              height: 30,
               width: 50,
               decoration: const BoxDecoration(
                            
               ),
              child: Image.asset("assets/png/india flag.png",fit: BoxFit.cover,)
                        ),
                      ),
           ),
           Container(
            margin: EdgeInsets.only(top: 18),
            child: Text("Review",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            SafeArea(
             child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
              height: 30,
               width: 50,
               decoration: const BoxDecoration(
                            
               ),
              child: Image.asset("assets/png/profile.png",fit: BoxFit.cover,)
                        ),
                      ),
           ),

          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    height: 120,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                      color: Colors.red
                    ),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 49,bottom: 10),
                      child: Text("9",style: TextStyle(
                      fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    height: 80,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                      color:lightred
                    ),
                  ),
          
                ],
              ),
               Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    height: 120,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                      color: darkyellow
                    ),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 45,bottom: 10),
                      child: Text("21",style: TextStyle(
                      fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    height: 50,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                      color:lightyellow
                    ),
                  ),
          
                ],
              ),
               Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    height: 120,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                      color: Colors.green
                    ),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 45,bottom: 10),
                      child: Text("39",style: TextStyle(
                      fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    height: 27,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                      color:lightgreen
                    ),
                  ),
          
                ],
              )
            ],
          ),
        ),SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Weak Words",style: TextStyle(fontWeight: FontWeight.bold),),
            Text("Medium Words",style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Strong Words",style: TextStyle(fontWeight: FontWeight.bold)),
          
          ],
        ),
        SizedBox(
          height: 25,
        ),
       Container(
        height: 400,
         child: ListView(
          scrollDirection: Axis.vertical,
           children: [
             Catogorys(
              text: 'Nice to Meet You',
               images: 'assets/png/tower2.png',),
               SizedBox(height: 15,),
             Catogorys(
              text: 'How are You',
               images: 'assets/png/tower2.png',),
                 SizedBox(height: 15,),
             Catogorys(
              text: "I'm Fine",
               images: 'assets/png/tower2.png',),
              SizedBox(height: 15,),
             Catogorys(
              text: 'Good Day',
               images: 'assets/png/tower2.png',),
              SizedBox(height: 15,),
                Catogorys(
              text: "I'm From India",
               images: 'assets/png/tower2.png',),
           ],
         ),
       ),
       Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: darkyellow
        ),
        child: TextButton(
          onPressed: () {
            
          },
          child: Center(
            child: Text("Review",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
          ),
        ),
       ),
    
      ],
    );
  }
}

class Catogorys extends StatelessWidget {
  final String text;
  final String images;
  const Catogorys({
    super.key,
   required this.text, 
   required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
         height: 55,
         width: 350,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(17),
           color: lightyellow
         ),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Container(
               padding: EdgeInsets.only(left: 25),
               child: Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
             ),
             SizedBox(
               width: 10,
             ),
             Icon(Icons.volume_up_outlined,size: 30,color:darkyellow,),
             SizedBox(
               width:100 ,
             ),
             Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
               height: 18,
               width: 20,
               child: Image.asset(images)
             )
           ],
         ),
        ),
      ],
    );
  }
}



 