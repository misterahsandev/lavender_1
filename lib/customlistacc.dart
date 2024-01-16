import 'package:flutter/material.dart';

import 'colors.dart';

class customlistacc extends StatelessWidget {
  const customlistacc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Icon(Icons.home,),
              ),
              Text('Home',style: TextStyle(fontSize: 12,),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5,left: 5),
          child: Container(
            height: 45,
            width: 53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: customthemecolor,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey
                ),
              ],
            ),
            child: Column(
              children: [
                Icon(Icons.perm_identity,color: Colors.white,),
                Text('My profile',style: TextStyle(fontSize: 10,color: Colors.white),)
              ],
            ),
          ),
        ),
        Container(
          height: 45,
          width: 53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Icon(Icons.lock_open),
              ),
              Text('Password',style: TextStyle(fontSize: 10),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5,left:5 ),
          child: Container(
            height: 45,
            width: 53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Icon(Icons.library_books_rounded),
                ),
                Text('My Order',style: TextStyle(fontSize: 10),)
              ],
            ),
          ),
        ),
        Container(
          height: 45,
          width: 53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Icon(Icons.gps_not_fixed),
              ),
              Text('Track order',style: TextStyle(fontSize: 10),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
            height: 45,
            width: 53,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Icon(Icons.power_settings_new_outlined),
                ),
                Text('Logout',style: TextStyle(fontSize: 12),)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
