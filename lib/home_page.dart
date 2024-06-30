import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Signed In: ',style: TextStyle(fontSize: 20),),
              Text(user!.email!,style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
            ],
          ),
          MaterialButton(onPressed: (){
            FirebaseAuth.instance.signOut();
          },
            color: Colors.deepPurple[200],
            child: Text('Sign Out'),
          ),
        ],
      ),),
    );
  }
}
