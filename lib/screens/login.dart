// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:slbfe/screens/home.dart';
import 'package:slbfe/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //obsecure
  bool _isObscure = true;
  //form key
  final _formKey = GlobalKey<FormState>();
  
  //email & password value assign
  late String _email, _password;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  //editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
      autofocus: false,
      //assigning controller
      controller: emailController,
      keyboardType: TextInputType.emailAddress, //typing method
      //validator
      validator: (email) {
        //if condition
        if (!RegExp(//regular email format
            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(email!)) {
          return "Please enter valid email address"; //return message
        }
        return null;
      },
      onSaved: (email) {
        emailController.text = email!;
        _email = email; //assign email variable to the value entered
      },
      textInputAction:
          TextInputAction.next, //last key of keyboard changes to next
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail), //icon of email field
        contentPadding: const EdgeInsets.fromLTRB(
            20, 15, 20, 15), //email field padding size
        hintText: "Email", //hint text in email field (email)
        border: OutlineInputBorder(
            //border of email field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      //records value when changed in text field
      onChanged: (value) {
        setState(() {
          //record values to the variables
          _email = value.trim();
        });
      },
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      //assigning controller
      controller: passwordController,
      //not discovering typing(text hiding)
      obscureText: _isObscure,
      //last key of keyboard changes to done
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key), //icon of password field
        contentPadding: const EdgeInsets.fromLTRB(
            20, 15, 20, 15), //password field padding size
        hintText: "Password", //hint text in password field (Password)
        //visibility icon
        suffixIcon: IconButton(
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            //set visibility icon on off
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            }),
        border: OutlineInputBorder(
            //border of password field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      //records value when changed in text field
      onChanged: (value) {
        setState(() {
          //record values to the variables
          _password = value.trim();
        });
      },
    );

    //button field
    final loginButton = Material(
      elevation: 5,
      //button radius
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xFFC530A0), //button color
      child: MaterialButton(
        //set padding of the button
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15), //button marginf
        minWidth: MediaQuery.of(context).size.width, //button width
        //when button pressed
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            setState(() {
              _email = emailController.text;
              _password = passwordController.text;
            });

            Navigator.push(context,
                MaterialPageRoute(builder: (c) => const Home()));
          }
        },
        child: const Text(
          //button text
          "Login",
          //aligned to center
          textAlign: TextAlign.center,
          //text style
          style: TextStyle(
              fontSize: 25, //font size of button text
              color: Colors.white, //button text color
              fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
       backgroundColor: Colors.white, //background color
       //set body of the page center
      body: Center(
          //set page to scroll view
          child: SingleChildScrollView(
        child: Container(
          //page color
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0), //page margin
            child: Form(
              //form key
              key: _formKey,
              child: Column(
                  //alignment
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //height
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/images/login.jpg", //logo inserting
                        //set image fit to box
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 35), //creating a gap  after logo

                    emailField,
                    const SizedBox(height: 25), //creating a gap after email

                    passwordField,
                    const SizedBox(height: 35), //creating a gap after password

                    loginButton,
                    const SizedBox(
                        height: 15), //creating a gap after login button

                    //creating "Don't have an account? SignUp" line
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, //align to center
                      children: <Widget>[
                        //text
                        const Text(
                          "Don't have an account?  ",
                          //text style
                          style: TextStyle(fontSize: 15),
                        ), //text line
                        GestureDetector(
                          //gesture on tap
                          onTap: () {
                            //navigate to
                            Navigator.pushAndRemoveUntil(
                                context,
                                PageRouteBuilder(
                                    pageBuilder: (context, a, b) =>
                                        const RegistrationScreen(),
                                    transitionDuration:
                                        const Duration(seconds: 0)),
                                (route) => false);
                          },
                          child: const Text(
                            "SignUp", //gesturing text(SignUp)
                            style: TextStyle(
                                //text color
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold, //bold text
                                fontSize: 16 //font size
                                ),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      )),
     
    );
  }
}
