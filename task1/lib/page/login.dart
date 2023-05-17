import 'package:flutter/material.dart';
import 'package:task1/constant.dart';
import 'package:task1/page/start_page.dart';

class LoginPage extends StatefulWidget {
  


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

TextEditingController nameController = TextEditingController();  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202,207,250),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 202,207,250),
        title: Text('Signup',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your Name'
              ),
              maxLines: null,
            ),
            SizedBox(height: 16.0),
            Padding(
            padding: const EdgeInsets.only(left: 20, right:200),
            child: Container(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Color.fromARGB(255, 83,84,176),
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                onPressed: (){
                  putname(nameController.text);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StartPage(),),);
                 
                 nameController.clear();                },
                child: Text('Signup', style: TextStyle(color: Colors.white,),
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}