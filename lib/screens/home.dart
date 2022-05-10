// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:slbfe/screens/sidebar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //change password button
    final changePW = Material(
      //create material button
      elevation: 5,
      borderRadius: BorderRadius.circular(10), //border radius
      color: const Color(0xFFAD1849),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width * 0.2, //button width
        onPressed: () {},

        child: const Text(
          "Change Password", //text
          textAlign: TextAlign.center, //aligned to center
          style: TextStyle(
              //text style
              fontSize: 20, //font size of button text
              color: Color(0xFFF3E7E7), //button text color
              fontWeight: FontWeight.bold //bold text
              ),
        ),
      ), //button color
    );

    return Scaffold(
      drawer: const SideBar(),
      //side bar drawer icon
      //drawer: const MyDrawer(),
      //creating app bar
      appBar: AppBar(
        //app bar color
        backgroundColor: const Color(0xFFAD1849),
        elevation: 0,
        //Home text in app bar
        title: const Text(
          "Home",
          style: TextStyle(
            //home font color
            color: Colors.white,
            //home font size
            fontSize: 25,
            //bold text
            fontWeight: FontWeight.bold,
          ),
        ),
        //brightness of app bar
        brightness: Brightness.dark,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 12,),
          changePW
        ],
      ),
    );
  }
}
