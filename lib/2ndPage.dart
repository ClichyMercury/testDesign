import 'package:flutter/material.dart';
import 'package:test/widgets/bottomNavigationBar/custtom_navigation_bar.dart';
import 'package:test/widgets/templetesCard.dart';
import 'package:test/widgets/timeSelection.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Container(),
        title: const Text(
          "Statistics",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Image.asset(
                "assets/icons/points.png",
                height: 25,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: Stack(
                children: [
                  ListView(
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TimeSelector(data: "This Week"),
                      TimeSelector(data: "Last Month"),
                      TimeSelector(data: "6 Months"),
                      TimeSelector(data: "Year"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/chart.png",
                  height: 250,
                ),
                const Column(
                  children: [
                    Text(
                      "Income",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "\$12.345.22",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "\$2.789.99",
                  style: blackTextStyle(),
                ),
                const SizedBox(height: 3),
                Text(
                  "Expenses",
                  style: greyTextStyle(),
                ),
              ],
            ),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Templetes",
                    style: blackTextStyle(),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "recently added",
                    style: greyTextStyle(),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 15),
              height: 190,
              child: Stack(
                children: [
                  ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TempletesCard(
                        thisColors: Color(0xfffbedbb),
                        colorName: "#fbedbb",
                        data: "Inssurance",
                        dateTime: "20 Sep. 2021",
                        price: "200,80",
                        priceColor: Color.fromARGB(255, 252, 227, 131),
                      ),
                      TempletesCard(
                        thisColors: Color(0xffabe8e9),
                        colorName: "#abe8e9",
                        data: "Tax",
                        dateTime: "10 Sep. 2021",
                        price: "1750,99",
                        priceColor: Color.fromARGB(255, 80, 215, 218),
                      ),
                      TempletesCard(
                        thisColors: Color(0xfffbedbb),
                        colorName: "#fbedbb",
                        data: "Inssurance",
                        dateTime: "20 Sep. 2021",
                        price: "200,80",
                        priceColor: Color.fromARGB(255, 252, 227, 131),
                      ),
                      TempletesCard(
                        thisColors: Color(0xffabe8e9),
                        colorName: "#abe8e9",
                        data: "Tax",
                        dateTime: "10 Sep. 2021",
                        price: "1750,99",
                        priceColor: Color.fromARGB(255, 80, 215, 218),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50)
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        changeIndex: changeIndex,
        currentIndex: currentIndex,
      ),
    );
  }

  TextStyle greyTextStyle() {
    return const TextStyle(
        color: Colors.grey, fontSize: 17, fontWeight: FontWeight.bold);
  }

  TextStyle blackTextStyle() {
    return const TextStyle(
        color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold);
  }
}
