import 'package:eccomerce/pages/buttomnav.dart';
import 'package:eccomerce/pages/login.dart';
import 'package:eccomerce/services/database.dart';
import 'package:eccomerce/services/shared_pref.dart';
import 'package:eccomerce/widget/support_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class Sigup extends StatefulWidget {
  const Sigup({super.key});

  @override
  State<Sigup> createState() => _LoginState();
}

class _LoginState extends State<Sigup> {
  String? name, email, password;

  TextEditingController namecontrollar = new TextEditingController();
  TextEditingController mailcontrollar = new TextEditingController();
  TextEditingController passwordcontrollar = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  registration() async {
    if (password != null && name != null && email != null) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
        String Id = randomAlphaNumeric(10);
        await SharedpreferenceHelper().saveUserMail(mailcontrollar.text);
        await SharedpreferenceHelper().saveUserId(Id);
        await SharedpreferenceHelper().saveUserName(namecontrollar.text);
        await SharedpreferenceHelper().saveUserImage(
            "https://i.pinimg.com/736x/18/3c/c3/183cc3f6afac4052ca3dc8c131438139.jpg");

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              'Usuario registrado',
              style: TextStyle(fontSize: 20),
            )));
        Map<String, dynamic> userInfoMap = {
          "name": namecontrollar.text,
          "email": mailcontrollar.text,
          "Id": Id,
          "image":
              "https://i.pinimg.com/736x/18/3c/c3/183cc3f6afac4052ca3dc8c131438139.jpg"
        };
        await DatabaseMethods().addUserDetails(userInfoMap, Id);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Buttomnav()));
      } on FirebaseException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Password  provider is to week',
                style: TextStyle(fontSize: 20),
              )));
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Account Already exsist',
                style: TextStyle(fontSize: 20),
              )));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 40),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/LOGIN2.PNG'),
                Center(
                  child: Text(
                    'Registrar cuenta',
                    style: Appwidget.semibolTextFeildStyle(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    '           Introdusca los datos para        \n                         continuar',
                    style: Appwidget.lightTextFeildStyle(),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Nombre',
                  style: Appwidget.semibolTextFeildStyle(),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'porfavor ingrese su nombre';
                      }
                      return null;
                    },
                    controller: namecontrollar,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Nombre',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Correo Electronico',
                  style: Appwidget.semibolTextFeildStyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'porfavor ingrese su correo';
                      }
                      return null;
                    },
                    controller: mailcontrollar,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Correo Electronico',
                    ),
                  ),
                ),
                Text(
                  'Contraseña',
                  style: Appwidget.semibolTextFeildStyle(),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'porfavor ingrese su contraseña';
                      }
                      return null;
                    },
                    controller: passwordcontrollar,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Contraseña',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        name = namecontrollar.text;
                        email = mailcontrollar.text;
                        password = passwordcontrollar.text;
                      });
                    }
                    registration();
                  },
                  child: Center(
                      child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No tienes cuenta?  ',
                      style: Appwidget.lightTextFeildStyle(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        'Registrar',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
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
}
