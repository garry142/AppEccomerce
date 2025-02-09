import 'package:eccomerce/widget/support_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List categories = [
    "images/auricular.png",
    "images/mac.png",
    "images/smar.png",
    "images/television.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hola, Garry',
                      style: Appwidget.boldTextFeildStyle(),
                    ),
                    Text(
                      "Buenos dias",
                      style: Appwidget.lightTextFeildStyle(),
                    ),
                  ],
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'images/image8.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Buscar Productos",
                    hintStyle: Appwidget.lightTextFeildStyle(),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categorias', style: Appwidget.semibolTextFeildStyle()),
                Text(
                  'Mas',
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 21, 160),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                height:  130,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(right: 20.0),
                decoration: BoxDecoration(color:Color.fromARGB(255, 7, 31, 255),borderRadius: BorderRadius.circular(15  )),
                width: 90,
                 child: Center(child: Text("Todo",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),))
               ),
                Expanded(
                  child: Container(
                    height:  130,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTyle(image: categories[index]);
                        }),
                  ),
                ),
              ],
            ),
              SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Todos los productos', style: Appwidget.semibolTextFeildStyle()),
                Text(
                  'Mas',
                  style: TextStyle(
                      color: Color.fromARGB(255, 6, 21, 160),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 240,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/auricular.png',height: 150,width: 150,fit: BoxFit.cover,)),
                        Text('Airpods Max',style: Appwidget.semibolTextFeildStyle()),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('\$100',style: TextStyle(color:Color.fromARGB(255, 6, 21, 160),fontSize: 22,fontWeight: FontWeight.bold ),),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color:Color.fromARGB(255, 6, 21, 160),borderRadius: BorderRadius.circular(7)),
                              child: Icon(Icons.add, color: Colors.white,))
                          ],
                        )
                      ],
                    ),
                  ),SizedBox(
                    height: 20,
                  ),
      // otro despliegue reloj, otro contenedor con el mismo estilo 
                   Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/smar.png',height: 150,width: 150,fit: BoxFit.cover,)),
                        Text('Apple Watch',style: Appwidget.semibolTextFeildStyle()),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('\$60',style: TextStyle(color:Color.fromARGB(255, 6, 21, 160),fontSize: 22,fontWeight: FontWeight.bold ),),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color:Color.fromARGB(255, 6, 21, 160),borderRadius: BorderRadius.circular(7)),
                              child: Icon(Icons.add, color: Colors.white,))
                          ],
                        )
                      ],
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/mac.png',height: 150,width: 150,fit: BoxFit.cover,)),
                        Text('Macbook Air',style: Appwidget.semibolTextFeildStyle()),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('\$1300',style: TextStyle(color:Color.fromARGB(255, 6, 21, 160),fontSize: 22,fontWeight: FontWeight.bold ),),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color:Color.fromARGB(255, 6, 21, 160),borderRadius: BorderRadius.circular(7)),
                              child: Icon(Icons.add, color: Colors.white,))
                          ],
                        )
                      ],
                    ),
                  ),
                   Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/television.png',height: 150,width: 150,fit: BoxFit.cover,)),
                        Text('Smart TV',style: Appwidget.semibolTextFeildStyle()),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('\$350',style: TextStyle(color:Color.fromARGB(255, 6, 21, 160),fontSize: 22,fontWeight: FontWeight.bold ),),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color:Color.fromARGB(255, 6, 21, 160),borderRadius: BorderRadius.circular(7)),
                              child: Icon(Icons.add, color: Colors.white,))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class CategoryTyle extends StatelessWidget {
  String image;
  CategoryTyle({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15  )),
      height: 90,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image,height: 50,width: 50,fit: BoxFit.cover,),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
