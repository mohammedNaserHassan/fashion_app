import 'package:fashion_app/MainApp/HomeScreen/Taps/home_screen.dart';
import 'package:fashion_app/Model/glopals.dart';
import 'package:fashion_app/Model/router.dart';
import 'package:fashion_app/Widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class sign_up extends StatefulWidget {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  sign_up();

  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  String email, phone, password, name;
  List categories = ['Arabic', 'English'];
  String dropdown = 'Arabic';

  setEmail(String email) {
    this.email = email;
  }

  setphone(String phone) {
    this.phone = phone;
  }

  setname(String name) {
    this.name = name;
  }

  setPassword(String pass) {
    this.password = pass;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Sign up page'),
      ),
      body: Container(
        child: Form(
          key: widget.globalKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text('Select your language'),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      child: DropdownButton<String>(
                        value: dropdown,
                        onChanged: (c) {
                          dropdown = c;
                          setState(() {});
                        },
                        items: categories
                            .map((e) => DropdownMenuItem<String>(
                                  child: Text(e),
                                  value: e,
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
                text_form_field(
                    onchange: (name) {
                      Glopals.glopals.name = name;
                    },
                    validate: (val) {
                      if (val.isEmpty) {
                        return 'Invalid name';
                      }
                      return null;
                    },
                    label: 'Enter your name',
                    function: (c) {
                      setname(c);
                    }),
                text_form_field(
                  validate: (val) {
                    if (val.isEmpty) {
                      return 'Invalid phone';
                    }
                    return null;
                  },
                  label: 'Enter your phone',
                  function: (c) {
                    setphone(c);
                  },
                  type: TextInputType.number,
                ),
                text_form_field(
                    validate: (val) {
                      if (val.isEmpty || !val.contains('@')) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                    label: 'Enter your email',
                    function: (c) {
                      setEmail(c);
                    }),
                text_form_field(
                  validate: (val) {
                    if (val.isEmpty || val.length < 5) {
                      return 'Invalid password';
                    }
                    return null;
                  },
                  label: 'Enter your password',
                  function: (c) {
                    setPassword(c);
                  },
                  state: true,
                ),
                TextButton(
                    onPressed: () {
                      if (widget.globalKey.currentState.validate()) {
                        widget.globalKey.currentState.save();
                        Glopals.glopals.name = name;
                        AppRouter.appRouter
                            .pushreplacmentfunction(home_screen());
                      }
                    },
                    child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            'Enter Application',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
