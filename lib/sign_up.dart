import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/logic/font_family.dart';
import 'package:collab_library/logic/size_config.dart';
import 'package:collab_library/widget/customWidgets.dart';
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
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final signupusernameController = TextEditingController();

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
                const SizedBox(
                  height: 30,
                ),
                customTitleText(
                  'User Registration',
                  spacing: 0,
                  size: 16,
                  textAlign: TextAlign.center,
                  colors: AppColor.normaltextColor,
                ),
                customDescriptionText(
                  'Create an account to continue',
                  fontSize: 12,
                  textAlign: TextAlign.center,
                  colors: AppColor.normaltextColor,
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    TextFormField(
                      cursorColor: AppColor.primaryColor,
                      controller: fNameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: Colors.grey[500]!.withOpacity(0.2),
                        filled: true,
                        focusColor: AppColor.primaryColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: AppColor.primaryColor, width: 15),
                        ),
                        labelText: 'First Name',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                        hintText: 'Enter first name',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Enter your first name';
                        }
                        return null;
                      },
                    ),
                    const Gap(15),
                    TextFormField(
                      cursorColor: AppColor.primaryColor,
                      controller: lNameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: Colors.grey[500]!.withOpacity(0.2),
                        filled: true,
                        focusColor: AppColor.primaryColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: AppColor.primaryColor, width: 15),
                        ),
                        labelText: 'Last Name',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                        hintText: 'Enter last name',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Enter your last name';
                        }
                        return null;
                      },
                    ),
                    const Gap(15),
                    TextFormField(
                      cursorColor: AppColor.primaryColor,
                      controller: signupusernameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: Colors.grey[500]!.withOpacity(0.2),
                        filled: true,
                        focusColor: AppColor.primaryColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: AppColor.primaryColor,
                            width: 1,
                          ),
                        ),
                        labelText: 'Username',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                        hintText: 'Enter username',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Enter your username "6 Characters minimum"';
                        }
                        return null;
                      },
                    ),
                    const Gap(15),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
