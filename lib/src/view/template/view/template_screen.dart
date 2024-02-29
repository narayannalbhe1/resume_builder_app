import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({super.key});

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Select Template',),
        automaticallyImplyLeading: false,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: SizedBox(
              width: kIsWeb ? 600 : MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Choose Template'),
                  SizedBox(height: 100),
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
                          child: Text('Select',style: TextStyle(
                              color: Colors.white,fontSize: 17
                          ),)),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
