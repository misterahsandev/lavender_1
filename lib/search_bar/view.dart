import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Search_barPage extends StatelessWidget {
  final logic = Get.put(Search_barLogic());
  final state = Get.find<Search_barLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                InkWell(
                    onTap: (){Get.back();},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 15),
                      child: Icon(Icons.arrow_back,color: Colors.grey,),
                    )),
      Padding(
        padding: const EdgeInsets.only(top: 5,bottom: 5,right: 35),
        child: Container(
            height: 50,
                width: 280,
                child: TextField(
                  cursorColor: Colors.grey,
                  // textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    // icon: Icon(Icons.search),
                  hintText: 'Search through 1000s products..',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: false,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: BorderSide(color: Colors.grey,)
                  ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(160),
                      borderSide: BorderSide(color: Colors.grey,),
                  ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide(color: Colors.red)
                    ),
                  ),
                ),
        ),
      ),
              ],
            ),
          ),
        ),
    );
  }
}
