import 'package:flutter/material.dart';
import 'package:school/screens/signup_page.dart';
import 'package:school/screens/welcome_page.dart';
import 'package:school/widget/custom_button.dart';
import 'package:school/widget/custom_image.dart';
import 'package:school/widget/custom_text_field.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});
  static String id = 'loginPage';

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/log.png'),
              Text(
                'Welcome to our society..\n              Sign in !',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              CustomTextField(
                onChanged: (data) {},
                fieldName: 'Username',
                inputType: TextInputType.emailAddress,
                hintText: 'Enter your username',
                obscureText: false,
                controller: userNameController,
              ),
              CustomTextField(
                onChanged: (data) {},
                fieldName: 'Password',
                inputType: TextInputType.text,
                hintText: 'Enter yor password',
                obscureText: true,
                controller: passwordController,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 20, left: 20, top: 10, bottom: 10),
                child: CustomButon(
                  text: 'Sign In',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginPage()));
                        },
                        child: Text(
                          'Forget your password ?',
                          style: TextStyle(color: Colors.grey.shade600),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text(
                    ' Or continue with ',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey.shade400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70, left: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImage(
                      image: 'assets/images/facebook.png',
                      height: 70,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomImage(
                      image: 'assets/images/google.png',
                      height: 52,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/apple.png',
                      height: 80,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member ? '),
                  GestureDetector(
                    child: Text(
                      'Register Now',
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
