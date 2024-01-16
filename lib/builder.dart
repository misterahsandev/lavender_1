import 'package:flutter/material.dart';

class builder extends StatefulWidget {
  const builder({Key? key}) : super(key: key);

  @override
  State<builder> createState() => _builderState();
}

class _builderState extends State<builder> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        leading:
          Icon(Icons.arrow_back_ios,color: Colors.white,),
        centerTitle: true,
        title: Text('lead/list builder',
        style: TextStyle(color: Colors.white,),),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 10),
            child: Icon(Icons.menu,
            color: Colors.white,),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25,top: 20),
              child: Text('LIST BUILDER',
              style: TextStyle(color: Colors.white,fontSize: 30,
                  fontWeight: FontWeight.w500),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 7),
                  child: Text('Sort',
                    style: TextStyle(color: Colors.white,
                        fontSize: 23,fontWeight: FontWeight.w300),),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
