import 'package:flutter/material.dart';

import 'constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String emailAddress = '';
  String password = '';
  String name = '';
  String? selectedValue = 'Pick a Faculty';
  List<DropdownMenuItem<String>> facultyList = [
    const DropdownMenuItem(
      value: 'Pick a Faculty',
      child: Text('Pick a Faculty'),
    ),
    const DropdownMenuItem(
      value: 'tech',
      child: Text('Faculty of Technology'),
    ),
    const DropdownMenuItem(
      value: 'science',
      child: Text('Faculty of Administration'),
    ),
    const DropdownMenuItem(
      value: 'tech',
      child: Text('Faculty of Agriculture'),
    ),
    const DropdownMenuItem(
      value: 'tech',
      child: Text('Faculty of Arts'),
    ),
    const DropdownMenuItem(
      value: 'tech',
      child: Text('Faculty of Education'),
    ),
    const DropdownMenuItem(
      value: 'tech',
      child: Text('Faculty of Environmental Design & Management'),
    ),
    const DropdownMenuItem(
      value: 'tech',
      child: Text('Faculty of Basic Medical Sciences'),
    ),
    const DropdownMenuItem(
      value: 'tech',
      child: Text('Faculty of Clinical Sciences'),
    ),
    const DropdownMenuItem(
      value: 'tech',
      child: Text('Faculty of Dentistry'),
    ),
    const DropdownMenuItem(
      value: 'tech',
      child: Text('Faculty of Law'),
    ),
  ];

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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(
            color: kwhite,
          ),
        ),
        backgroundColor: kred,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Name Field
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: kLightGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            labelText: "Name",
                            labelStyle: TextStyle(
                              color: kblack,
                            ),
                            floatingLabelStyle: TextStyle(
                              color: kblack,
                            ),
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            name = value;
                          },
                        ),
                      ),
                    ),
                    // End of Name Field

                    const SizedBox(
                      height: 20,
                    ),

                    // Email Address Field
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: kLightGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            labelText: "School Email Address",
                            labelStyle: TextStyle(
                              color: kblack,
                            ),
                            floatingLabelStyle: TextStyle(
                              color: kblack,
                            ),
                            border: InputBorder.none,
                          ),
                          validator: (String? value) {
                            if (value!.endsWith('@student.oauife.edu.ng')) {
                              return null;
                            } else {
                              return 'Please register with your student email';
                            }
                          },
                          onChanged: (value) {
                            emailAddress = value;
                          },
                        ),
                      ),
                    ),
                    // End of Email Addresss Field

                    const SizedBox(
                      height: 20,
                    ),

                    // Password Field
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: kLightGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: kblack,
                            ),
                            floatingLabelStyle: TextStyle(
                              color: kblack,
                            ),
                            border: InputBorder.none,
                          ),
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          onChanged: (value) {
                            password = value;
                          },
                        ),
                      ),
                    ),
                    // End of Password Field

                    const SizedBox(
                      height: 20,
                    ),

                    // Faculty Field
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: kLightGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: DropdownButton(
                          items: facultyList,
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                    // End of Faculty Field
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                // if (emailAddress.endsWith('student.oauife.edu.ng')) {
                // } else {
                //   showInSnackBar(
                //       context, 'Please use your school email to register');
                // }
              },
              minWidth: double.infinity,
              height: 70,
              elevation: 3,
              color: kred,
              child: const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 25,
                  color: kwhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
