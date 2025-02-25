import 'package:flutter/material.dart';
import 'package:redditclone/core_floder/constants/constants.dart';
import 'package:redditclone/theme/pallete.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Center(
          child: Image.asset(Constants.logopath,height: 40,)
        ),
        // title: Text('Login Screen'),
        actions: [
          // Center(child: Image.asset("assets/images/logo.png")),
          // IconButton(icon: Icon(Icons.help), onPressed: () {}),
          TextButton(onPressed: (){}, 
          child: Text("skip",style: TextStyle(color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          ),
          ),
          ),
        ],
      ),
      // const SizedBox(height: 20,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            Text(
              "Dive into anything",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Image.asset(Constants.loginEmotepath,height: 300,)
            ),
            const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(8),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                // color: Colors.grey,
               color: Pallete.darkModeAppTheme.cardColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Constants.googlepath,height: 300,),
                  const SizedBox(width: 10,),
                  const Text("continue with google")
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}