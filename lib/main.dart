import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _backgroundColor = Colors.blue;

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> kirimData(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              content: Container(
            height: 200,
            child: Column(children: <Widget>[
              Text("Nama Lengkap : ${username.text}"),
              Text("Password : ${password.text}"),
            ]),
          ));
        });
  }

  void _changeColor() {
    setState(() {
      _backgroundColor = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Form Login",
      home: Scaffold(
        backgroundColor: _backgroundColor, // set background color
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        child: Image(
                          image: AssetImage("assets/uti.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Universitas Teknokrat Indonesia",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 35, left: 30, right: 30, bottom: 35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Welcome Back",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        Text(
                          "Please login to your account.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 35,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextField(
                                controller: username,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  hintText: "Username",
                                  labelText: "Username",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextField(
                                obscureText: true,
                                controller: password,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  hintText: "Password",
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              // ElevatedButton(
                              //   onPressed: () {
                              //     kirimData(context);
                              //   },
                              //   child: Text("Simpan"),
                              //   style: ButtonStyle(
                              //     backgroundColor:
                              //         MaterialStateProperty.all<Color>(
                              //             Colors.blue),
                              //   ),
                              // ),
                              TextButton(
                                onPressed: () {
                                  kirimData(context);
                                },
                                child: Text("LOGIN",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  fixedSize: Size(double.infinity, 40),
                                  minimumSize: Size(double.infinity, 50),
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have account?",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 13),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 13),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
