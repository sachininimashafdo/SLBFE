import 'package:flutter/material.dart';
import 'package:slbfe/screens/login.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _isObscure = true; //bool value to show and hide

  //dropdown item declaration
  final items = [
    'Software Engineering',
    'Developer',
    'Network Security',
    'Business Management',
    'Human Resource',
    'Doctor',
    'Security',
    'Nurse',
    'Teaching',
    'Lecturer',
    'Electritian',
    'Construction Workers'
  ];
  String? value;

  late String text;
  //form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  //dropdown item assigning function
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        //value is set to declared variable
        value: item,
        //text style
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

  //dispose controllers
  @override
  void dispose() {
    nameEditingController.dispose();
    usernameEditingController.dispose();
    ageEditingController.dispose();
    nicEditingController.dispose();
    phoneEditingController.dispose();
    addressEditingController.dispose();
    emailEditingController.dispose();
    passwordEditingController.dispose();
    confirmPasswordEditingController.dispose();
    super.dispose();
  }

  //define editing controlles
  //text field can be edited and input values
  final nameEditingController = TextEditingController();
  final usernameEditingController = TextEditingController();
  final ageEditingController = TextEditingController();
  final nicEditingController = TextEditingController();
  final phoneEditingController = TextEditingController();
  final addressEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //name field
    final nameField = TextFormField(
      autofocus: false,
      controller: nameEditingController, //assigning the controller
      keyboardType: TextInputType.name, //typing method
      textInputAction:
          TextInputAction.next, //last key of keyboard changes to next
      decoration: InputDecoration(
        prefixIcon:
            const Icon(Icons.account_circle_rounded), //icon of name field
        contentPadding: const EdgeInsets.fromLTRB(
            //name field padding size
            20,
            15,
            20,
            15),
        hintText: "Name", //hint text in name field (Name)
        border: OutlineInputBorder(
            //border of name field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      onChanged: (value) {
        //records value when changed in text field
        setState(() {
          nameEditingController.text.trim(); //name value
        });
      },
    );

    //username field
    final usernameField = TextFormField(
      autofocus: false,
      controller: usernameEditingController, //assigning the controller
      keyboardType: TextInputType.name, //typing method
      textInputAction:
          TextInputAction.next, //last key of keyboard changes to next
      decoration: InputDecoration(
        prefixIcon:
            const Icon(Icons.account_circle_rounded), //icon of name field
        contentPadding: const EdgeInsets.fromLTRB(
            //name field padding size
            20,
            15,
            20,
            15),
        hintText: "Username", //hint text in name field (Name)
        border: OutlineInputBorder(
            //border of name field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      onChanged: (value) {
        //records value when changed in text field
        setState(() {
          usernameEditingController.text.trim(); //name value
        });
      },
    );

    //age field
    final ageField = TextFormField(
      autofocus: false,
      controller: nameEditingController, //assigning the controller
      keyboardType: TextInputType.number, //typing method
      textInputAction:
          TextInputAction.next, //last key of keyboard changes to next
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person_rounded), //icon of age field
        contentPadding: const EdgeInsets.fromLTRB(
            //name field padding size
            20,
            15,
            20,
            15),
        hintText: "Age", //hint text in name field (Name)
        border: OutlineInputBorder(
            //border of name field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      onChanged: (value) {
        //records value when changed in text field
        setState(() {
          ageEditingController.text.trim(); //name value
        });
      },
    );

    //NIC field
    final nicField = TextFormField(
      //creating text form field
      autofocus: false,
      controller: nicEditingController, //controller
      keyboardType: TextInputType.text, //typing method
      onSaved: (nic) {
        //An optional method to call with the final value in FormState
        nicEditingController.text = nic!;
      },
      textInputAction:
          TextInputAction.next, //last key of keyboard changes to next
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person), //icon of email field
        contentPadding: const EdgeInsets.fromLTRB(
            //email field padding size
            20,
            15,
            20,
            15),
        hintText: "NIC", //hint text in email field (email)
        border: OutlineInputBorder(
            //border of email field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      onChanged: (value) {
        //records value when changed in text field
        setState(() {
          nicEditingController.text.trim(); //record values to the variables
        });
      },
    );

    //phone field
    final phoneField = TextFormField(
      //creating text form field
      autofocus: false,
      controller: phoneEditingController, //controller
      keyboardType: TextInputType.phone, //typing method
      onSaved: (email) {
        //An optional method to call with the final value in FormState
        phoneEditingController.text = email!;
      },
      textInputAction:
          TextInputAction.next, //last key of keyboard changes to next
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.phone), //icon of email field
        contentPadding: const EdgeInsets.fromLTRB(
            //email field padding size
            20,
            15,
            20,
            15),
        hintText: "Phone Number", //hint text in email field (email)
        border: OutlineInputBorder(
            //border of email field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      onChanged: (value) {
        //records value when changed in text field
        setState(() {
          phoneEditingController.text.trim(); //record values to the variables
        });
      },
    );

    //username field
    final addressField = TextFormField(
      autofocus: false,
      controller: addressEditingController, //assigning the controller
      keyboardType: TextInputType.text, //typing method
      textInputAction:
          TextInputAction.next, //last key of keyboard changes to next
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.location_on), //icon of address field
        contentPadding: const EdgeInsets.fromLTRB(
            //name field padding size
            20,
            15,
            20,
            15),
        hintText: "Username", //hint text in name field (Name)
        border: OutlineInputBorder(
            //border of name field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      onChanged: (value) {
        //records value when changed in text field
        setState(() {
          addressEditingController.text.trim(); //name value
        });
      },
    );

    //email field
    final emailField = TextFormField(
      //creating text form field
      autofocus: false,
      controller: emailEditingController, //controller
      keyboardType: TextInputType.emailAddress, //typing method
      validator: (email) {
        if (emailEditingController.text.isNotEmpty ==
            !RegExp(//regular email format
                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(email!)) {
          return "Please enter valid email address"; //return message
        }
        return null;
      },
      onSaved: (email) {
        //An optional method to call with the final value in FormState
        emailEditingController.text = email!;
      },
      textInputAction:
          TextInputAction.next, //last key of keyboard changes to next
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail), //icon of email field
        contentPadding: const EdgeInsets.fromLTRB(
            //email field padding size
            20,
            15,
            20,
            15),
        hintText: "Email", //hint text in email field (email)
        border: OutlineInputBorder(
            //border of email field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      onChanged: (value) {
        //records value when changed in text field
        setState(() {
          emailEditingController.text.trim(); //record values to the variables
        });
      },
    );

    //password field
    final passwordField = TextFormField(
      //creating text form field
      autofocus: false,
      controller: passwordEditingController, //controller
      obscureText: _isObscure, //not discovering typing(text hiding)
      textInputAction:
          TextInputAction.next, //last key of keyboard changes to next
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key), //icon of password field
        contentPadding: const EdgeInsets.fromLTRB(
            //password field padding size
            20,
            15,
            20,
            15),
        hintText: "Password", //hint text in password field (Password)
        suffixIcon: IconButton(
            icon: Icon(_isObscure
                ? Icons.visibility
                : Icons.visibility_off), //eye icon for show and hide password
            onPressed: () {
              //on pressed on icon
              setState(() {
                _isObscure = !_isObscure; //hide and see the password value
              });
            }),
        border: OutlineInputBorder(
            //border of password field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      onChanged: (value) {
        //records value when changed in text field
        setState(() {
          passwordEditingController.text
              .trim(); //record values to the variables
        });
      },
    );

    //confirm password field
    final confirmPasswordField = TextFormField(
      //creating text form field
      autofocus: false,
      controller: confirmPasswordEditingController, //controller
      obscureText: _isObscure, //not discovering typing(text hiding)
      textInputAction:
          TextInputAction.done, //last key of keyboard changes to done
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key), //icon of confirm password field
        contentPadding: const EdgeInsets.fromLTRB(
            //password field padding size
            20,
            15,
            20,
            15),
        hintText:
            "Confirm Password", //hint text in confirm password field (Password)
        suffixIcon: IconButton(
            icon: Icon(_isObscure
                ? Icons.visibility
                : Icons.visibility_off), //eye icon for show and hide password
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            }),
        border: OutlineInputBorder(
            //border of confirm password field
            borderRadius: BorderRadius.circular(10) //border radius
            ),
      ),
      onChanged: (value) {
        //records value when changed in text field
        setState(() {
          confirmPasswordEditingController.text
              .trim(); //record values to the variables
        });
      },
    );

    //button field
    final loginButton = Material(
      //create material button
      elevation: 5,
      borderRadius: BorderRadius.circular(10), //border radius
      color: const Color(0xFFAD1849), //button color
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15), //button margin
        //on button pressed
        onPressed: () {},
        child: const Text(
          "Sign Up", //text
          textAlign: TextAlign.center, //aligned to center
          style: TextStyle(
              //text style
              fontSize: 20, //font size of button text
              color: Color(0xFFF3E7E7), //button text color
              fontWeight: FontWeight.bold //bold text
              ),
        ),
      ),
    );

    return Scaffold(
      //scaffold
      appBar: AppBar(
        //creating app bar
        backgroundColor: Colors.white, //background colour of the page
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), //back arrow icon
          color: Colors.black38, //icon color
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
          }, //on press action
        ),
      ),
      backgroundColor: Colors.white, //background color
      body: SingleChildScrollView(
        //create scrolling view
        child: Container(
          color: Colors.white, //color
          child: Padding(
            padding: const EdgeInsets.all(36.0), //page margin
            child: Form(
              key: _formKey, //form key
              child: SizedBox(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, //alignment
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color(0xFFAD1849),
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                      const SizedBox(height: 15), //creating a gap  after logo
                      nameField,
                      const SizedBox(height: 15), //creating a gap after name
                      usernameField,
                      const SizedBox(
                          height: 15), //creating a gap after username
                      ageField,
                      const SizedBox(height: 15), //creating a gap after age
                      nicField,
                      const SizedBox(height: 15), //creating a gap after nic
                      phoneField,
                      const SizedBox(height: 15), //creating a gap after phone
                      addressField,
                      const SizedBox(height: 15), //creating a gap after address
                      Row(children: [
                        Center(
                            child: Container(
                          width: 320,
                          padding: const EdgeInsets.only(left: 30),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                                hint: const Text("Profession"),
                                //displaying value assigned to value variable
                                value: value,
                                iconSize: 36,
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                //item is set to items the declared variable
                                items: items.map(buildMenuItem).toList(),
                                //select changing iem
                                onChanged: (value) =>
                                    setState(() => this.value = value)),
                          ),
                        )),
                      ]),
                      const SizedBox(
                        height: 15,
                      ),
                      emailField,
                      const SizedBox(height: 15), //creating a gap after email
                      passwordField,
                      const SizedBox(
                          height: 15), //creating a gap after password
                      confirmPasswordField,
                      const SizedBox(
                          height: 10), //creating a gap after confirm password
                      loginButton,
                      const SizedBox(
                          height: 10), //creating a gap after login button
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
