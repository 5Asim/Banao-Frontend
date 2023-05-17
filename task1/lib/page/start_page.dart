
import 'package:task1/constant.dart';
import 'package:task1/page/Home.dart';

import 'package:flutter/material.dart';
import 'package:task1/page/Hub.dart';
import 'package:task1/page/Learn.dart';
import 'package:task1/page/chat.dart';
import 'package:task1/page/profile.dart';


class StartPage extends StatefulWidget {
  StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {


  @override
  

  

  int currentTab = 0;
  final List<Widget> screens =[
    Home_Page(),
    Learn_Page(),
    Hub_Page(),
    Chat_page(),
    Profile_page(),

    
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home_Page();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: bgcolor,
      leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: ImageIcon(AssetImage("assets/drawer.png"),color: grey,), // Change the icon here
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
     

      // backgroundColor: appBarColor,
      // shadowColor: ,
      actions: [
        IconButton(onPressed: (){
           setState(() {
             currentScreen=Chat_page();
                      currentTab=2;
           });
        },icon: ImageIcon(AssetImage("assets/chat2.png"),color: grey,)),
        // IconButton(onPressed: (){}, icon: ImageIcon(AssetImage("assets/chat_apppbar.png"))),
        IconButton(onPressed: (){},icon: Icon(Icons.notifications_none,color: grey,),)
      ],
    ),
    
    drawer: Drawer(

    ),
     body: Padding(
       padding: const EdgeInsets.only(left:16.0,right: 16),
       child: PageStorage(
        
          child: currentScreen,
          bucket: bucket,
        ),
     ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color:Colors.white, 
        notchMargin: 10,
        child: Container(
          height:60,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                  minWidth: 30,
                  onPressed:(){
                    setState(() {
                      currentScreen=Home_Page();
                      currentTab=0;
                    });
                  },
                  child:Column(
                    
              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage("assets/home.png"),color: blue,), 
                      Text('Home',
                        style: TextStyle(color:blue,),
                      )
                    ],
          )
              ),
              MaterialButton(
                  minWidth: 30,
                  onPressed:(){
                    setState(() {
                      currentScreen=Learn_Page();
                      currentTab=1;
                    });
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      ImageIcon(AssetImage("assets/book.png"),color: grey,),
                      Text('Learn',
                        style: TextStyle(color:grey ,),
                      )
                    ],
                  )
              ),
              MaterialButton(
                  minWidth: 30,
                  onPressed:(){
                    setState(() {
                      currentScreen=Hub_Page();
                      currentTab=1;
                    });
                  },
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(AssetImage("assets/hub.png"),color: grey,),
                      Text('Hub',
                        style: TextStyle(color:  grey ,),
                      )
                    ],
                  )
              ),

                
              
              MaterialButton(
              minWidth: 30,
              onPressed:(){
                setState(() {
                  currentScreen=Chat_page();
                  currentTab=3;
                });
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/chat.png"),color: grey,),
                  Text('Chat',
                    style: TextStyle(color:grey,),
                  )
                ],
              )
              ),
              MaterialButton(
              minWidth: 30,
              onPressed:(){
                setState(() {
                  currentScreen=Profile_page();
                  currentTab=4;
                });
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(AssetImage("assets/profile.png"),color: grey,),
                  Text('Profile',
                    style: TextStyle(color:  grey ,),
                  )
                ],
              )
              )
          ])
        ),
      ),
    );
  }
}
