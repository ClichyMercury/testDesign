import 'package:flutter/material.dart';
import 'package:test/2ndPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()));
                      },
                      child: Image.asset(
                        "assets/icons/back-icone.png",
                        height: 70,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Keep Finance",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(height: 10),
              Text(
                "  at Your \nFingertip",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              Image.asset(
                "assets/images/main-image.png",
              )
            ],
          ),
        ),
      ),
    );
  }
}
