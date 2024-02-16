import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:travel_app/components/homepage/home_page.dart';
import 'package:travel_app/components/homepage/home_page_iew.dart';
import 'package:travel_app/components/profile_page/profile_page.dart';
import 'package:travel_app/components/travelpage/travel_page.dart';
import 'package:travel_app/constants.dart';

class HomePageView extends State<HomePage> {
  HomePageViewModel? viewModel;
  HomePageView() {
    viewModel = HomePageViewModel();
  }
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor:Colors.black,
      statusBarColor:Colors.transparent,
    ));
     return Scaffold(
         body: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height:size.height * .44,
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  color: Color(0XFF0C1337) 
                  
                   ),    
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TextButton(
                       onPressed: () {
                         
                       },
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
                   TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                      });
                    },
                     child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                         
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            
                          ),
                          child: Image.asset("assets/png/profile.png",fit: BoxFit.cover,)
                        ),
                      ),
                   ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      margin: EdgeInsets.only(right: 200),
                      child: Text("Hello,Harini",style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),
                      ),
                    ),
                     Container(
                        margin: EdgeInsets.only(right: 130),
                       child: Text("Make Some Good Steps Today",style: TextStyle(color: Colors.white,fontSize: 15,),
                                             ),
                     ),
                     SizedBox(
                      height: 20,
                     ),
                     Container(
                      height: 160,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: darkyellow
                      ),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20)),
                            child: Container(
                              height: 160,
                              width: 100,
                              child: Image.asset("assets/png/travel.png",fit:BoxFit.cover,),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text("India For Traveling",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                ),
                                ),
                                Container(
                                margin: EdgeInsets.only(right: 40),
                                child: Text("Beginner | 8 Levels",style: TextStyle(fontSize: 13,),
                                ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                 new LinearPercentIndicator(
                                 width: 140.0,
                                  lineHeight: 13.0,
                                  animation: true,
                                 animationDuration: 800,
                                 percent: 0.5,
                                 center: Text(
                                  "60.0%",
                                   style: new TextStyle(fontSize: 12.0),
                                                            ),
                                                
                                   linearStrokeCap: LinearStrokeCap.roundAll,
                                  backgroundColor: Colors.grey,
                                   progressColor: Colors.green,
                                 ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 36,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: darkblue,
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => TravelPage()));
                                      });
                                    },
                                    child: Center(
                                      child: Text("continue >",style: TextStyle(color: Colors.white),),
                                    ),
                                  ),
                                )
                            ],
                          )
                        ],
                      )
                     )
            
                  ],
                ),
              
            
              ],
            ),
           
              Expanded(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height:350,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 200),
                  child: Text("Today's Statistics",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 90,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:darkblue
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("87",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold),),
                            SizedBox(
                              height: 15,
                            ),
                            Text("New Words", style:TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 90,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:darkblue
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("19",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold),),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Words Reviewed", style:TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 90,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:darkblue
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("172",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold),),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Min Learning", style:TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                 voiceroomPage()
                ],
                            ),
              ) 
           
          ],
         ),
         
     );
  }
  Widget voiceroomPage(){
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          child: Text("Voice rooms",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 140,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.yellow
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15,top: 15),
                          height: 20,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Image.asset("assets/png/america.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15,top: 15),
                          height:20,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue
                          ),
                          child: Center(
                            child: Text("Beginner",style: TextStyle(color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 130),
                      child: Text("Let's Speak English",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
                      ),
                     Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10,top: 15),
                          height: 40,
                          width: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/png/profile.png")
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text("Swetha"),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                         Container(
                          width: 20,
                            margin: EdgeInsets.only(top: 10),
                           child: CircleAvatar(
                            backgroundImage: AssetImage("assets/png/profile.png"),
                                                 ),
                         ),
                         Container(
                          width: 20,
                          margin: EdgeInsets.only(top: 10),
                           child: CircleAvatar(
                            backgroundImage: AssetImage("assets/png/profile.png"),
                                                 ),
                         ),
                         Container(
                          width: 20,
                          margin: EdgeInsets.only(top: 10),
                           child: CircleAvatar(
                            
                            backgroundImage: AssetImage("assets/png/profile.png"),
                                                 ),
                         ),
                          Container(
                          width: 20,
                          margin: EdgeInsets.only(top: 10),
                           child: CircleAvatar(
                            
                            backgroundImage: AssetImage("assets/png/profile.png"),
                                                 ),
                         )
                       
          
                      ],
                     )
                  ],
                ),
              
              ),
               Container(
                margin: EdgeInsets.only(left: 10),
                height: 140,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Colors.yellow
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15,top: 15),
                          height: 20,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Image.asset("assets/png/india flag.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15,top: 15),
                          height:20,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue
                          ),
                          child: Center(
                            child: Text("Beginner",style: TextStyle(color: Colors.white),),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height:10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 130),
                      child: Text("Let's Speak Tamil",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
                      ),
                     Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10,top: 15),
                          height: 40,
                          width: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/png/profile.png")
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text("Swetha"),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                         Container(
                          width: 20,
                            margin: EdgeInsets.only(top: 10),
                           child: CircleAvatar(
                            backgroundImage: AssetImage("assets/png/person.png"),
                                                 ),
                         ),
                         Container(
                          width: 20,
                          margin: EdgeInsets.only(top: 10),
                           child: CircleAvatar(
                            backgroundImage: AssetImage("assets/png/person.png"),
                                                 ),
                         ),
                         Container(
                          width: 20,
                          margin: EdgeInsets.only(top: 10),
                           child: CircleAvatar(
                            
                            backgroundImage: AssetImage("assets/png/person.png"),
                                                 ),
                         ),
                          Container(
                          width: 20,
                          margin: EdgeInsets.only(top: 10),
                           child: CircleAvatar(
                            
                            backgroundImage: AssetImage("assets/png/person.png"),
                                                 ),
                         )
                       
          
                      ],
                     )
                  ],
                ),
              
              )
            ],
          ),
        )
      ],
    );
  }
}