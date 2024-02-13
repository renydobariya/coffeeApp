import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Image.asset("assets/Delivery.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 60),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 320, top: 60),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Icon(Icons.location_searching_outlined),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomSheet: Container(
        decoration: BoxDecoration( borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
        ),
            color: Colors.white
        ),
        height: 300,
        width: MediaQuery.of(context).size.width,

        child: Column(
          children: [
            Text(
              "10 minutes left",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
            ),
            Row(
              children: [
                SizedBox(
                  width: 110,
                ),
                Text(
                  "Delivery to",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                Text(
                  "Jl.Kpg Sutoyo",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 76,
                  height: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFF36C07E)),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 76,
                  height: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFF36C07E)),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 76,
                  height: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFF36C07E)),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 76,
                  height: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFDFDFDF)),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/bike.png",
                    height: 70,
                    width: 70,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Delivered your order",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "We deliver your goods to you in \n"
                              "the shortes possible time.",
                          style: TextStyle(color: Color(0XFF808080)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Image.asset(
                    "assets/johan.png",
                    height: 60,
                    width: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          "Johan Hawn",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Personal Courier",
                            style:
                            TextStyle(color: Colors.black54, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),

                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    child: Image.asset("assets/call.png"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
