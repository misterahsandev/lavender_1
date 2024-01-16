import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';

class customdrawer extends StatelessWidget {
  const customdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.black45,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: EdgeInsets.only(left: 10,top: 25),
                child: InkWell(
                  onTap: (){Get.back();},
                    child: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15,top: 35),
                child: Text('Lavender Shopping Services',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                      fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 15),
                child: InkWell(
                  onTap: (){ Navigator.pop(context);},
                    child: SvgPicture.asset('assets/d home.svg')),
              ),
              const Divider(color: Colors.white,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset('assets/d category.svg'),
              ),
              const Divider(color: Colors.white,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset('assets/d customorder.svg'),
              ),
              const Divider(color: Colors.white,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset('assets/d blog.svg'),
              ),
              const Divider(color: Colors.white,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset('assets/d about.svg'),
              ),
              const Divider(
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/contact.svg'),
                    const Padding(
                      padding: EdgeInsets.only(left:10),
                      child: const Text('Contact us',style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100,left: 90),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 45,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: customthemecolor,
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15,right: 8),
                          child: Text('Logout',style:TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400) ,),
                        ),
                        Icon(Icons.logout,color: Colors.white,size: 25,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

