import 'package:coffee/page4.dart';
import 'package:flutter/material.dart';


class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Text(
              "Detail",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black),
            ),
            Spacer(),
            Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 35,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(scrollDirection:Axis.vertical ,
        child: Column(
          children: [
            Center(
              child: Container(
                width: 360,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.black),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/c1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Cappucino",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "with Chocolate",
                  style: TextStyle(fontSize: 15, color: Color(0XFF9B9B9B)),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.star, size: 30, color: Color(0XFFFBBE21)),
                SizedBox(width: 5),
                Text(
                  "4.8",
                  style: TextStyle(
                      color: Color(0XFF2F2D2C),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5),
                Text(
                  "(230)",
                  style: TextStyle(fontSize: 15, color: Color(0XFF808080)),
                ),
                Spacer(),
                Image.asset(
                  "assets/rose.png",
                  height: 50,
                  width: 50,
                ),
                Image.asset(
                  "assets/glass.png",
                  height: 50,
                  width: 50,
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 1,
              width: 350,
              color: Color(0XFFEAEAEA),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text("A cappuccino is an approximately 150 ml (5\n"
                  "oz) beverage, with 25 ml of espresso coffee",style: TextStyle(
                color: Colors.grey,
              )),
            ),
            Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Text("and 85ml of fresh milk the fo..",style: TextStyle(
                  color: Colors.grey
                )),
                Text(
                  "Read More",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0XFFC67C4E)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Size",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all()),
                  child: Center(
                      child: Text("S",
                          style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),color: Color(0XFFFFF5EE),
                      border: Border.all(color: Color(0XFFC67C4E))),
                  child: Center(
                      child: Text("M",
                          style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold))),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all()),
                  child: Center(
                      child: Text("L",
                          style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold))),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 300,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  )
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 35,top: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Price",style: TextStyle(color: Color(0XFF9B9B9B),fontSize: 20,)),SizedBox(height:5),
                        Text("\$ 4.53",style: TextStyle(color: Color(0XFFC67C4E),fontSize: 20,fontWeight: FontWeight.w800)),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right:30,bottom:210),
                      child: InkWell(onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => Page4()),);
                      },
                        child: Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0XFFC67C4E),),
                          child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
