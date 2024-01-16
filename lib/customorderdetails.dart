import 'package:flutter/material.dart';

class customorderdetails extends StatelessWidget {
  const customorderdetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 330,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                color: Colors.grey
            )
          ]
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Row(
              children: [
                Text('#',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 35),
                  child: Text('Order ID',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                ),
                Text('Total',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 35),
                  child: Text('Status ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                ),
                Text('Date',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text('1',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 40),
                  child: Text('690s1fs567',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                ),
                Text('450',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text('Delivered',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                Text('13 Jan 2023',style: TextStyle(fontSize: 12 ,color: Colors.grey),)
              ],
            ),
          ),
          /// 2 ///
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
            child: Row(
              children: [
                Text('2',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 40),
                  child: Text('690s1fs568',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                ),
                Text('350',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.redAccent,
                    ),
                    child: Center(
                      child: Text('Cancelled',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                Text('13 Jan 2023',style: TextStyle(fontSize: 12 ,color: Colors.grey),)
              ],
            ),
          ),
          /// 3 ///
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text('3',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 40),
                  child: Text('690s1fs569',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                ),
                Text('550',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 25),
                  child: Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text('Pending',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                Text('13 Jan 2023',style: TextStyle(fontSize: 12 ,color: Colors.grey),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
            child: Row(
              children: [
                Text('4',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 40),
                  child: Text('690s1fs561',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                ),
                Text('420',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 10),
                  child: Container(
                    height: 25,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.yellow,
                    ),
                    child: Center(
                      child: Text('Processing',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                Text('13 Jan 2023',style: TextStyle(fontSize: 12 ,color: Colors.grey),)
              ],
            ),
          ),
          /// 5 ///
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text('5',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 40),
                  child: Text('690s1fs563',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                ),
                Text('450',style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text('Delivered',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                Text('13 Jan 2023',style: TextStyle(fontSize: 12 ,color: Colors.grey),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
