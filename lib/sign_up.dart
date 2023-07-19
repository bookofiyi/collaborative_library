import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/logic/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

class SignUp extends StatefulWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: AppColor.kwhiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: SignUp._formKey,
            child: Column(
              children: [
                Gap(Get.height * .2),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/user.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
