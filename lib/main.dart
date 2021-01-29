import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 120),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/catLogo.jfif',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  'Martha Harris',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Text(
                  'Quisque imperdiet nunc at massa dictum volutpat. Etiam id orci ipsum. Integer id exdignissim',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Sofia',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: RaisedButton(
                  color: Color(0xFFFD4082),
                  onPressed: () {},
                  child: Text(
                    'Follow',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ),
              CustomRow(),
              CustomRow(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomColumn(
          topText: '8825',
          bottomText: 'Followers',
        ),
        CustomColumn(
          topText: '1766',
          bottomText: 'Following',
        ),
        CustomColumn(
          topText: '8.5',
          bottomText: 'Social Score',
        ),
      ],
    );
  }
}

class CustomColumn extends StatelessWidget {
  final String topText;
  final String bottomText;
  const CustomColumn({
    Key key,
    this.topText,
    this.bottomText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            topText,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Montserrat',
            ),
          ),
          Text(
            bottomText,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Sofia',
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
