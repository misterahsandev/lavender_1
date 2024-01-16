import 'package:flutter/material.dart';
import 'package:lavender_1/customblackbox.dart';
import 'package:lavender_1/custompurplebutton.dart';

class customheaddown extends StatelessWidget {
  const customheaddown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10, bottom: 5, top: 10),
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90,
              width:90,
              child: Image.asset('assets/headown.png')),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: const [
                customBlackButton(
                  title: 'By lavender',
                  textstyle: TextStyle(
                      color: Colors.white,fontSize: 12),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Text(
                    'Paints of busy routine',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 13),
                  ),
                ),
                Text(
                  'Work-life is not always easy..',
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 12),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: custompurplebutton(
                    title: 'Read me',
                    textStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          const Icon(
            Icons.watch_later_outlined,
            size: 13,
            color: Colors.grey,
          ),
          const Text(
            '11 Jan 2023',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}
