import 'package:coffee/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  TextEditingController searchController = TextEditingController();
  int Select = 0;
  List image = [
    {
      "pic": "assets/c1.png",
      "name": "Cappuccino",
      "text": "with Chocolate",
      "price": "\$ 4.53"
    },
    {
      "pic": "assets/c2.png",
      "name": "Cappuccino",
      "text": "with out Milk",
      "price": "\$ 3.90"
    },
    {
      "pic": "assets/c3.png",
      "name": "Cappuccino",
      "text": "with out Milk",
      "price": "\$ 3.90"
    },
    {
      "pic": "assets/c4.png",
      "name": "Cappuccino",
      "text": "with out Milk",
      "price": "\$ 3.90"
    },
  ];
  List details = [
    {"text": "Cappuccino"},
    {"text": "Macchiato"},
    {"text": "Latte"},
    {"text": "Americano"},
    {"text": "Cortado"},
    {"text": "Affogato"},
    {"text": "Frappe"},
    {"text": "Mocha"},
    {"text": "Iced coffee"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 70),
                              child: Text(
                                "Location",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Row(
                                children: [
                                  Text(
                                    "Bilzen,Tanjunbalai",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    size: 20,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 150, left: 100),
                          child: Image.asset("assets/girl.png",
                              width: 50, height: 50),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 30),
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: searchController,
                            decoration: const InputDecoration(
                              prefixIcon:
                                  Icon(Icons.search_sharp, color: Colors.grey),
                              hintText: "search coffee",
                              fillColor: Color(0xffc2bbbb),
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(
                              //     10,
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 05),
                          child: Image.asset(
                            "assets/orange.png",
                            width: 40,
                            height: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 30),
                  child: Image.asset("assets/p2.png", height: 190, width: 350),
                ),
              ],
            ),
            Container(
              height: 70,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: details.length,
                itemBuilder: (context, i) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffC67C4E)),
                          child: Center(
                            child: Text("${details[i]["text"]}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              padding: EdgeInsets.all(16),
              itemCount: image.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 270),
              itemBuilder: (ctx, i) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page3()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Stack(children: [
                              Container(
                                width: 180,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    "${image[i]["pic"]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    color: Color(0XFf000000)),
                                child: Row(
                                  children: [
                                    SizedBox(width: 15),
                                    Icon(Icons.star,
                                        color: Color(0XFFFBBE21), size: 15),
                                    Text("4.8",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15)),
                                  ],
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "${image[i]["name"]}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "${image[i]["text"]}",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "${image[i]["price"]}",
                                    style: TextStyle(
                                        color: Color(0XFF2F4B4E),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 5),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0XFFC67C4E)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffC67C4E),
        unselectedItemColor: Colors.black,
        iconSize: 40,
        currentIndex: Select,
        onTap: (value) {
          Select = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
      ),
    );
  }
}
