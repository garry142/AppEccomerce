import 'package:eccomerce/pages/login.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 239, 237, 0.121),
      body: Container(
        margin: EdgeInsets.only(top:40),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Image.asset('images/imagenA1.png'),
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Text(
                "Explora\nLas mejores\nMusicas",
               style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
             ),
             SizedBox(height: 20.0,),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
                  child: GestureDetector(
                    onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Iniciar",
                     style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                 ),
               ],
             ),
          ],
        ),
      ),
    );
  }
}
