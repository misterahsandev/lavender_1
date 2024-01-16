import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lavender_1/colors.dart';
import 'package:lavender_1/customblackbox.dart';
import 'package:lavender_1/customwhitebutton.dart';
import 'package:resize/resize.dart';

import 'logic.dart';

class SignupPage extends StatelessWidget {
  final logic = Get.put(SignupLogic());
  final state = Get.find<SignupLogic>().state;

   SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupLogic>(
      builder: (signuplogic) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: customthemecolor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .4,
                        child: Image.asset('assets/lavender_logo.png')),
                    Text(
                      'Lavender',
                      style: signuplogic.state.Titletext,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13, top: 20),
                          child: Text(
                            'Full name',
                            style: signuplogic.state.Fieldtext,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, right: 3, top: 3),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(06),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:
                                    const BorderSide(color: Colors.black),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                      const BorderSide(color: Colors.red)),
                            ),
                          ),
                        )
                      ],
                    ),

                    ///Email///
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13, top: 20),
                          child: Text(
                            'Email',
                            style: signuplogic.state.Fieldtext,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, right: 3, top: 3),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(06),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:
                                    const BorderSide(color: Colors.black),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                      const BorderSide(color: Colors.red)),
                            ),
                          ),
                        )
                      ],
                    ),

                    ///Password///
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13, top: 20),
                          child: Text(
                            'Password',
                            style: signuplogic.state.Fieldtext,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, right: 3, top: 3),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(06),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:
                                    const BorderSide(color: Colors.black),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                      const BorderSide(color: Colors.red)),
                            ),
                          ),
                        )
                      ],
                    ),

                    ///Repeat Password///
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13, top: 20),
                          child: Text(
                            'Repeat Password',
                            style: signuplogic.state.Fieldtext,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, right: 3, top: 3),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide:
                                    const BorderSide(color: Colors.black),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                      const BorderSide(color: Colors.red)),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              activeColor: Colors.white,
                              checkColor: const Color(0xff8585DE),
                              value: signuplogic.rememberCheck,
                              onChanged: (newValue) {
                                signuplogic.updateRememberCheck(newValue);
                              }),
                          Text(
                            'Remember me',
                            style: signuplogic.state.Fieldtext,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 120,
                            ),
                            child: customBlackButton(
                              title: 'Signup',
                              textstyle: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an Account? ',
                            style: signuplogic.state.Yellowtext,
                          ),
                          Text(
                            "Login",
                            style: signuplogic.state.Logintext,
                          ),
                        ],
                      ),
                    ),

                    ///dots///
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 3),
                            child: Container(
                              height: 5.h,
                              width: 5.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white54,
                              ),
                            ),
                          ),
                          Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white54,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 3, left: 3),
                            child: Container(
                              height: 5.h,
                              width: 5.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white54,
                              ),
                            ),
                          ),
                          Container(
                            height: 7.h,
                            width: 7.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),

                    ///back///
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),

                        ///Skip button///
                        InkWell(
                          onTap: signuplogic.navigationMethod,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 190, top: 15),
                            child: customWhiteButton(
                              title: 'Skip',
                              textStyle: TextStyle(color: customthemecolor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
