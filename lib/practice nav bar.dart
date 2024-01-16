import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/custompurplebutton.dart';

class praticeNavbar extends StatefulWidget {
  const praticeNavbar({Key? key}) : super(key: key);

  @override
  State<praticeNavbar> createState() => _praticeNavbarState();
}

class _praticeNavbarState extends State<praticeNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child:  CircleAvatar(
          radius: 40,
          backgroundColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: SvgPicture.asset('assets/customorder.svg'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 3.5,
        color: customthemecolor,
        child: SizedBox(
          height: 62,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/home.svg'),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: const Text('Home',style: const TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.w300),),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child:  Column(
                  children: [
                    SvgPicture.asset('assets/search.svg'),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text('Search',style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.w300),),
                    )
                  ],
                ),
              ),
               VerticalDivider(
                 color: Colors.transparent,
               ),
              Container(
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/cart.svg'),
                  ],
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/account.svg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
