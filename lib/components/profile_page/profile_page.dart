import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
  
class _ProfilePageState extends State<ProfilePage> {
  PageController _PageController = PageController();
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
      elevation: 0,
      backgroundColor:Colors.transparent,
      leading: Container(
        child: IconButton(onPressed:() {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)
        ),
      ),
       actions: [
         Container(
          child: IconButton(onPressed:() {
            
          }, icon: Icon(Icons.settings)),
        ),
        Container(
          child: IconButton(onPressed:() {
            
          }, icon: Icon(Icons.more_vert)),
        )
       ],
     ),
     body: pageContend(),
  );
  }
  Widget pageContend(){
    return Column(
      
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 150),
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/png/profile.png"),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text("Harini",style: TextStyle(fontSize:28,fontWeight: FontWeight.bold),),
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on,color: Colors.grey,),
            Container(
              margin: EdgeInsets.only(right: 8),
              child: Text("Chennai",style: TextStyle(color: Colors.grey,fontSize: 17),),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Text('"I am Passionate and Most Loving travel "',style: TextStyle(fontSize:16),),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Container(
                      
               height: 70,
               width: 90,
              decoration: const BoxDecoration(
                                
               ),
              child: Image.asset("assets/png/india flag.png",fit: BoxFit.cover,)
                ),
             ),

            ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Container(
                      
               height: 70,
               width: 90,
              decoration: const BoxDecoration(
                                
               ),
              child: Image.asset("assets/png/america.png",fit: BoxFit.cover,)
                ),
             ),
             Center(
               child: Container(
                height:70,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey
                ),
                child: Center(
                  child: Text("+",style: TextStyle(color: Colors.white,fontSize: 40),),
                ),
               ),
             ),  
          ],
        ),
        SizedBox(
          height:30,
        ),
        Container(
       
          height: 210,
          width: 330,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: darkblue
          ),
            child: Column(
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                child: CircularPercentIndicator(
                radius:60.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 8.0,
                percent: 0.6,
                center: Text("60%",style: TextStyle(color: Colors.white,fontSize: 28),
                ),
                progressColor: Colors.green,
                            
                 ),
              ),
              SizedBox(
                height: 10,
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                  child: Text("86",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                 ),
                  Container(
                  child: Text("9,578",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                 ),
                  Container(
                  child: Text("86",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                 ),
               ],
             ) ,
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                  margin: EdgeInsets.only(right: 14),
                  child: Text("Words learned",style: TextStyle(color: Colors.white),),
                 ),
                  Container(
                     margin: EdgeInsets.only(right: 14),
                  child: Text("Rank",style: TextStyle(color: Colors.white),),
                 ),
                  Container(
                     margin: EdgeInsets.only(right: 14),
                  child: Text("min learned",style: TextStyle(color: Colors.white),),
                 ),
               ],
             ) 
              ],
            )
          
        ),
        SizedBox(
          height: 60,
        ),
        Container(
          margin: EdgeInsets.only(right: 230),
          child: Text("Days Learned",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
        ),
        Container(
          margin: EdgeInsets.only(top: 10,right: 200,left: 10),
          child: SmoothPageIndicator(  
                 controller:_PageController, 
                count:  6,  
                axisDirection: Axis.horizontal,  
                effect:  SlideEffect(  
                spacing:  14.0,  
                radius:  10.0,  
                dotWidth:  15.0,  
                dotHeight:  14.0,  
                paintStyle:  PaintingStyle.stroke,  
                strokeWidth:  1.5,  
                dotColor:  Colors.grey,  
                activeDotColor:  Colors.green,
                  
             ),  
          ),
        ),
        SizedBox(
          height: 
          10,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 17),
              child: Text("Sat"),
            ),
            SizedBox(
              width: 5,
            ),
             Container(
              child: Text("mon"),
            ),
             SizedBox(
              width: 5,
            ),
             Container(
              child: Text("Tue"),
            ),
             SizedBox(
              width: 5,
            ),
             Container(
              child: Text("Wed"),
            ),
             SizedBox(
              width: 5,
            ),
             Container(
              child: Text("Thu"),
            ),
             SizedBox(
              width: 5,
            ),
             Container(
              child: Text("Fri"),
            ),
          ],
        ) 
      ],
    );
  }
}