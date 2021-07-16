import 'package:fashion_app/Auth/sign_up.dart';
import 'package:fashion_app/MainApp/HomeScreen/Taps/home_screen.dart';
import 'package:fashion_app/Model/glopals.dart';
import 'package:fashion_app/Model/router.dart';
import 'package:fashion_app/Widgets/text_field.dart';
import 'package:flutter/material.dart';

class main_screen extends StatefulWidget {
  const main_screen();

  @override
  _main_screenState createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String emailtext, passwordtext;

  setEmail(String mail) {
    this.emailtext = mail;
  }

  setPassword(String pass) {
    this.passwordtext = pass;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage("assets/images/profile.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null /* add child content here */,
            ),
          ),
          Positioned(
              top: 50,
              child: IconButton(
                onPressed: () {
                  AppRouter.appRouter.pushreplacmentfunction(sign_up());
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              )),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    text(40, 'Welcome Back!'),
                    SizedBox(
                      height: 20,
                    ),
                    text(28, 'Sign in to your account'),
                    SizedBox(
                      height: 80,
                    ),
                    text_field(
                      onchange: (x){
                        Glopals.glopals.name=x;
                      },
                      textEditingController: email,
                      hinttext: 'Email',
                      iconData: Icons.mail_outline,
                      state: false,
                      f: (x) {
                        setEmail(x);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    text_field(
                      textEditingController: password,
                      iconData: Icons.lock_outline,
                      hinttext: 'Password',
                      state: true,
                      f: (p) {
                        setPassword(p);
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: text(18, 'Forgot Password')),
                    SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      elevation: 0,
                      minWidth: double.maxFinite,
                      color: Colors.red[700],
                      onPressed: () {
                      if(!email.text.isEmpty&&!password.text.isEmpty){
                        AppRouter.appRouter
                            .pushreplacmentfunction(home_screen());
                      }
                      },
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: text(20, 'LOGIN')),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          text(18, 'Don\'t have an account?'),
                          TextButton(
                              onPressed: () {
                                AppRouter.appRouter
                                    .pushreplacmentfunction(sign_up());
                              },
                              child: text(18, 'Sign Up'))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget text(double size, String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: size),
    );
  }
}
