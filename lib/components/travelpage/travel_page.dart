import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:travel_app/constants.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({super.key});

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
   String dropdownvalues = '3';
   var items = [
    '1'
    '2'
    '3'
    '4'
   ];
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
            child: Text("India for Traveling",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
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
        Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 25,top: 10),
              child: Text("Level 3",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Icon(Icons.arrow_drop_down))
           
          ],
        ),
             Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
               child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2000,
                percent: 0.6,
                center: Text("60.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.greenAccent,
              ),
             ),  
             Container(
               alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 25,top: 10),
              child:Text("Chapter 1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
             ),
             Container(
               alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 25,top: 10),
              child:Text("2/4 lessons Completed",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
             ),  
             SizedBox(
              height: 20,
             ),          
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
             CircularProfileAvatar(
                    '',
                    child: Image.asset("assets/png/profile2.png"),
                    borderColor: Colors.green,
                    borderWidth: 5,
                    elevation: 2,
                    radius: 40
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 150),
                    child: Text("Hello!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.cloud_download_outlined,color: darkyellow,)
            ],
           ),
           SizedBox(height: 30,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
             CircularProfileAvatar(
                    '',
                    child: Image.asset("assets/png/mentalk.png",fit: BoxFit.cover,),
                    borderColor: Colors.green,
                    borderWidth: 5,
                    elevation: 2,
                    radius: 40
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Text("Saying How are you",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.cloud_download_outlined,color: darkyellow,)
            ],
           ), 

             SizedBox(height: 30,),  
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
             CircularProfileAvatar(
                    '',
                    child: Image.asset("assets/png/building2.png",fit: BoxFit.cover,),
                    borderColor: Colors.green,
                    borderWidth: 5,
                    elevation: 2,
                    radius: 40
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 38),
                    child: Text("Saying Where are you",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.cloud_download_outlined,color: darkyellow,)
            ],
           ),  SizedBox(height: 30,),
               Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
             CircularProfileAvatar(
                    '',
                    child: Image.asset("assets/png/desert.png",fit: BoxFit.cover,),
                    borderColor: Colors.grey,
                    borderWidth: 5,
                    elevation: 2,
                    radius: 40
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 38),
                    child: Text("ask about the location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey),
                    ),
                  ),
                  Icon(Icons.cloud_download_outlined,color: darkyellow,)
            ],
           ),  SizedBox(height: 30,),
          Container(
            height: 120,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: lightyellow
            ),
            child:        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
             CircularProfileAvatar(
                    '',
                    child: Image.asset("assets/png/location.png"),
                    borderColor: Colors.grey,
                    borderWidth: 5,
                    elevation: 2,
                    radius: 40
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Checkpoint",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        
                        ),
                        Text("Access the Next Chapter",style: TextStyle(fontSize: 15,color: Colors.grey),)
                      ],
                    ),
                  ),
                  Icon(Icons.cloud_download_outlined,color: darkyellow,)
            ],
           ),
          )
      ],
    );
  }
}