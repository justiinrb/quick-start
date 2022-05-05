import 'package:flutter/material.dart';

class Paw1 extends StatefulWidget {
  Paw1({Key key}) : super(key: key);

  @override
  State<Paw1> createState() => _Paw1State();
}

class _Paw1State extends State<Paw1> {
  bool _loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 60),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white24,
                  Colors.white30,
                ],
              ),
            ),
            child: Image.asset(
              "assets/tri.png",
              color: Colors.purpleAccent[50],
              height: 200,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.indigo[800],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        fontSize: 45),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email ID",
                        suffixIcon: Icon(Icons.alternate_email)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: " Pasword", suffixIcon: Icon(Icons.lock)),
                    obscureText: true,
                  ),
                  RaisedButton(
                    color: Colors.blue[700],
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Login",
                          style: TextStyle(fontSize: 20),
                        ),
                        if (_loading)
                          Container(
                            height: 20,
                            width: 20,
                            margin: const EdgeInsets.only(left: 20),
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "OR",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  RaisedButton(
                    color: Colors.grey[300],
                    onPressed: () {},
                    child: Row(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _loging(BuildContext context) {
    if (!_loading) {
      setState(() {
        _loading = true;
      });
    }
  }
}
