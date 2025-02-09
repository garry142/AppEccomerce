import 'package:eccomerce/widget/support_widget.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 141, 0, 188),
      body: Container(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                Center(
                    child: Image.asset(
                      'images/auricular.png',
                      height: 500,
                ))
              ],
            ),
            Expanded(
              child: Container(
                padding:  EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),topRight: Radius.circular(20)
                    ),
                    ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Airpods Max',style: Appwidget.boldTextFeildStyle()),
                          Text(
                         '\$300',
                          style: TextStyle(
                          color: Color.fromARGB(255, 6, 21, 160),
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: 10,
                    ),
                     Text('Detalles',style: Appwidget.semibolTextFeildStyle()),
                     Text('.\n Los AirPods Max están diseñados con las siguientes características para reducir el impacto ambiental: Sin retardantes de llama bromados.'),
                     SizedBox(
                      height: 20,
                     ),
                     Container(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 6, 21, 160)
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text('Comprar Ahora',
                        style: TextStyle(color: Colors.white,
                        fontSize: 20,fontWeight: FontWeight.bold),)),
                     )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
