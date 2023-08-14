import 'package:firebase_authentication/auth_controller.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {

  String? email;

  WelcomePage({required this.email});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0,top: 13),
            child: GestureDetector(
                onTap: (){
                  AuthController.instance.logOut();
                },
                child: Text('Logout',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(image: AssetImage('images/welcomepage.jpeg'),fit: BoxFit.cover,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.email!,style: TextStyle(color: Colors.white,fontSize: 25),)
            ],
          )
        ],
      ),
    );
  }
}
