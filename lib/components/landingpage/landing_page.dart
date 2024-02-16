import 'package:flutter/material.dart';
import 'package:travel_app/components/homepage/home_page.dart';
import 'package:travel_app/components/reviewpage/review_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
    int selectedIndex = 0;
  List<Widget> pageContent = [
    Center(
      child: Container(
        alignment: Alignment.center,
        child: Text("Home"),
      ),
    ),
    Center(
      child: Text("Tower"),
    ),
    Center(
      child: Text("cloud"),
    ),
    Center(
      child: Text("profile"),
    ),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFF4D201),
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.cell_tower_outlined),label: "Review",),
          BottomNavigationBarItem(icon: Icon(Icons.cloud_outlined),label: "climate"),
          BottomNavigationBarItem(icon: Icon(Icons.person_3_outlined),label: "profile"),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          
        },
        ),
        body: switchcaseFun(),
    );
}
Widget switchcaseFun(){
  switch(selectedIndex){
    case 0:
    return HomePage();
    case 1: 
     return ReviewPage();
    case 2:
    return Center(
      child: Text("data"),
      
    );
   case 3:
    return Center(
      child: Text("data"),
    );
    default:
    return Container();
  }
}
}