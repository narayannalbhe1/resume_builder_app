
import 'package:flutter/material.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.white,),
        ),
        title: Text("Interest",style: TextStyle(
            color: Colors.white
        ),
        ),centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: Column(

      ),
    );
  }
}
