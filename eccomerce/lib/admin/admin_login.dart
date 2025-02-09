import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eccomerce/admin/admin_home.dart';
import 'package:eccomerce/widget/support_widget.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  TextEditingController usernamecontrollar = new TextEditingController();
  TextEditingController userpasswordcontrollar = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/LOGIN2.PNG'),
              Center(
                child: Text(
                  'Panel de Administracion',
                  style: Appwidget.semibolTextFeildStyle(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Nombre de Usuario',
                style: Appwidget.semibolTextFeildStyle(),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF4F5F9),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: usernamecontrollar,
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
                  controller: userpasswordcontrollar,
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
                  loginAdmin();
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
                      'Login',
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
            ],
          ),
        ),
      ),
    );
  }

  loginAdmin() {
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot) {
      snapshot.docs.forEach((result) {
        if (result.data()['username'] != usernamecontrollar.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Su Id no es correcto',
                style: TextStyle(fontSize: 20),
              )));
        } else if (result.data()['password'] !=
            userpasswordcontrollar.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Contraseña incorrecta',
                style: TextStyle(fontSize: 20),
              )));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AdminHome()));
        }
      });
    });
  }
}
