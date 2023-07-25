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
  final signupemailController = TextEditingController();
  final signupPasswordController = TextEditingController();

  bool isHiddenPassword = true;
  String message = '';

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
                    TextFormField(
                      cursorColor: AppColor.primaryColor,
                      autofocus: false,
                      keyboardType: TextInputType.emailAddress,
                      controller: signupemailController,
                      // onChanged: (enteredEmail) => validateEmail(enteredEmail),
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
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
                        suffixIcon: const Icon(
                          Icons.email,
                          color: AppColor.primaryColor,
                        ),
                        labelText: 'Email Address',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                        hintText: 'Enter email address',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                color: AppColor.inputtextColor.withOpacity(0.4),
                                fontFamily: FontFamily.sfRegular,
                                fontSize: 14),
                      ),
                      validator: (value) {
                        // Check if this field is empty
                        if (value!.isEmpty) {
                          return 'Enter a valid Email Address';
                        }
                        // using regular expression
                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return "Please enter a valid email address";
                        }

                        // using the school email
                        if (!value.endsWith('@student.oauife.edu.ng')) {
                          return 'Please use your school email';
                        }

                        // the email is valid
                        return null;
                      },
                    ),
                    Center(
                      child: customDescriptionText(
                        message,
                        fontSize: 12,
                        colors: AppColor.primaryColor,
                      ),
                    ),
                    TextFormField(
                      cursorColor: AppColor.primaryColor,
                      // controller: controller.signupPasswordController,
                      controller: signupPasswordController,
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
                            15,
                          ),
                          borderSide: const BorderSide(
                            color: AppColor.primaryColor,
                            width: 1,
                          ),
                        ),
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(
                            isHiddenPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                          return 'Enter your password "8 Characters Minimum"';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        // if (SignUpScreen._formKey.currentState!.validate()) {
                        //   if (controller.status != Status.isLoading) {
                        //     controller.signUp(
                        //       email: signupemailController.text.trim(),
                        //       firstname: fNameController.text.trim(),
                        //       lastname: lNameController.text.trim(),
                        //       username: signupusernameController.text.trim(),
                        //       password: signupPasswordController.text.trim(),
                        //     );
                        //   }
                        // }
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
                            "Sign Up",
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
                            "Already a member?",
                            textAlign: TextAlign.center,
                            colors: AppColor.normaltextColor,
                            onTap: () {
                              // Get.offAll(() => const LoginScreen());
                            },
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          customDescriptionText(
                            "Sign in",
                            textAlign: TextAlign.center,
                            colors: AppColor.primaryColor,
                            onTap: () {
                              // Get.offAll(() => const LoginScreen());
                            },
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
