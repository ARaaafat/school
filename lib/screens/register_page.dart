import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:school/screens/login_page.dart';
import 'package:school/widget/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:school/widget/custom_text_form_field.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  static String id = 'registerationPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? email;

  String? password;

  bool isLoading = false;

  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Image.asset('assets/images/log.png'),
                  Column(
                    children: [
                      Text(
                        'Welcome to our society',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Sign up !',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CustomTextFormField(
                    fieldName: 'Username',
                    inputType: TextInputType.emailAddress,
                    hintText: 'Enter your username',
                    obscureText: false,
                    controller: userNameController,
                    onChanged: (data) {
                      email = data;
                    },
                  ),
                  CustomTextFormField(
                    onChanged: (data) {
                      password = data;
                    },
                    fieldName: 'Password',
                    inputType: TextInputType.text,
                    hintText: 'Enter yor password',
                    obscureText: true,
                    controller: passwordController,
                  ),
                  CustomTextFormField(
                    onChanged: (data) {},
                    fieldName: 'Verifying Password',
                    inputType: TextInputType.text,
                    hintText: 'Enter yor verified password',
                    obscureText: true,
                    controller: passwordController,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 10, bottom: 10),
                    child: CustomButon(
                      text: 'Sign Up',
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          isLoading = true;
                          try {
                            await signUp();
                            showSnackBar(context, 'Registration success !');
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              showSnackBar(context, 'Week password !');
                            } else if (e.code == 'email-already-in-use') {
                              showSnackBar(context, 'Email is already exist !');
                            }
                          } catch (e) {
                            showSnackBar(context, 'there is an error');
                          }
                          isLoading = false;
                        } else {}
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an accout ? '),
                      GestureDetector(
                        child: Text(
                          'Login Now',
                          style: TextStyle(color: Colors.blue.shade800),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginPage()));
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> signUp() async {
    final credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
