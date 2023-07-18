import 'package:collab_library/constants.dart';
import 'package:collab_library/logic/colors.dart';
import 'package:collab_library/logic/font_family.dart';
import 'package:collab_library/logic/size_config.dart';
import 'package:collab_library/widget/customWIdgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String emailAddress = '';
  String password = '';
  final loginemailController = TextEditingController();
  final loginpasswordController = TextEditingController();
  bool isHiddenPassword = true;

  void showInSnackBar(context, String value) {
    final snackBar = SnackBar(
      content: Text(value),
      backgroundColor: kred,
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: 'DISMISS',
        textColor: kwhite,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColor.kwhiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Form(
            key: SignIn._formKey,
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
                  'User Login',
                  spacing: 0,
                  size: 16,
                  textAlign: TextAlign.center,
                  colors: AppColor.normaltextColor,
                ),
                customDescriptionText(
                  'Login to continue',
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
                      controller: loginemailController,
                      keyboardType: TextInputType.emailAddress,
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
                          borderRadius: BorderRadius.circular(
                            (15),
                          ),
                          borderSide: const BorderSide(
                            color: AppColor.primaryColor,
                            width: (1),
                          ),
                        ),
                        suffixIcon: const Icon(
                          Icons.email_outlined,
                          color: AppColor.primaryColor,
                        ),
                        labelText: 'Email address',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                        hintText: 'Email address',
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
                          return 'Enter your email address';
                        }
                        return null;
                      },
                    ),
                    const Gap(15),
                    TextFormField(
                      cursorColor: AppColor.primaryColor,
                      // controller: controller.loginpasswordController,
                      controller: loginpasswordController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      obscureText: isHiddenPassword,
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
                          borderRadius: BorderRadius.circular(
                            (15),
                          ),
                          borderSide: const BorderSide(
                            color: AppColor.primaryColor,
                            width: (1),
                          ),
                        ),
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(
                            isHiddenPassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: isHiddenPassword
                                ? AppColor.primaryColor
                                : AppColor.inputtextColor.withOpacity(0.5),
                          ),
                        ),
                        labelText: 'Password',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                        hintText: 'Password',
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
                          return 'Enter your account password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          customDescriptionText(
                            "Forgot password ?",
                            onTap: () {
                              // Get.to(() => const ForgetPassword());
                            },
                            textAlign: TextAlign.center,
                            colors: AppColor.normaltextColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    // if (LoginScreen._formKey.currentState!.validate()) {
                    //   if (controller.status != Status.isLoading) {
                    //     controller.logIn(
                    //       email: loginemailController.text.trim(),
                    //       password: loginpasswordController.text.trim(),
                    //     );
                    //   }
                    // }
                    // Get.to(() => UserNavScreen());
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          color: Color(0xffe2e5ed),
                          spreadRadius: 5,
                        ),
                        BoxShadow(
                          blurRadius: 15,
                          offset: Offset(0, 2),
                          color: Color(0xFF5B9BFF),
                          spreadRadius: -5,
                        ),
                        BoxShadow(
                          blurRadius: 20,
                          offset: Offset(10, 0),
                          color: Color(0xff5B9BFF),
                          spreadRadius: -5,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customDescriptionText(
                        "Don't have an account?",
                        onTap: () {},
                        textAlign: TextAlign.center,
                        colors: AppColor.normaltextColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      customDescriptionText(
                        "Sign up",
                        onTap: () {
                          // Get.offAll(() => const SignUpScreen());
                        },
                        textAlign: TextAlign.center,
                        colors: AppColor.primaryColor,
                      ),
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
