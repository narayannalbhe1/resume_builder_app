
import 'package:flutter/material.dart';

class ObjectiveScreen extends StatefulWidget {
  const ObjectiveScreen({super.key});

  @override
  State<ObjectiveScreen> createState() => _ObjectiveScreenState();
}

class _ObjectiveScreenState extends State<ObjectiveScreen> {

  TextEditingController objective = TextEditingController();



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
        title: Text("Objective",style: TextStyle(color: Colors.white),
        ),centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: objective,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Objective',
                  labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(),
                  hintText: ' ',
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical:100 ,horizontal:  10.0),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: TextButton(
                  onPressed: (){

                  },
                  child: Text('Save',style: TextStyle(
                      color: Colors.white,fontSize: 17
                  ),)),
            ),
          )
        ],
      ),
    );
  }
}
