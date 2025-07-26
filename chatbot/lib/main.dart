import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  Gemini.init(apiKey: "AIzaSyCetUXndbwSZdJJlUC3Bz_LW9yVGFaLpBk");
  runApp(Chatbot());
}
class Chatbot extends StatelessWidget {
  const Chatbot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage (),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Icon(Icons.message),
            SizedBox(width: 10,),
            Text("ChatBot"),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome to chat bot", style: TextStyle(fontSize: 25, color: Colors.pink),),
            Lottie.asset("assets/lottie/lottie_robot.json"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Enter your message",
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                ElevatedButton(onPressed: (){}, child: Icon(Icons.send))
              ],
            )

          ],
        ),
      ),
    );
  }
}