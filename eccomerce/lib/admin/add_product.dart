import 'package:eccomerce/pages/home.dart';
import 'package:eccomerce/widget/support_widget.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  
 
    String? value;
    final List<String> categoryitem = [
      'Apple Watch',
      'Macbook Air',
      'Airpods',
      'Smart Tv'
    ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                 Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Icon(Icons.arrow_back_ios_new_outlined)),
          title: Text(
            'Add product',
            style: Appwidget.semibolTextFeildStyle(),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cargar la imagen del producto',
                style: Appwidget.lightTextFeildStyle(),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(Icons.camera_alt_outlined),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Nombre del producto ',
                style: Appwidget.lightTextFeildStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Categoria de productos',
                style: Appwidget.lightTextFeildStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: categoryitem
                        .map((item) => DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: Appwidget.semibolTextFeildStyle(),
                            )))
                        .toList(),
                    onChanged: ((value) => setState(() {
                          this.value = value;
                        })),
                    dropdownColor: Colors.white,
                    hint: Text('Seleccionar Categoria'),
                    iconSize: 36,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    value: value,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Agregar producto',
                        style: TextStyle(fontSize: 22),
                      )))
            ],
          ),
        ),
      );
    }
  }