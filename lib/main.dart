import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Color _backgroundColor = Colors.indigo.shade50;
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Login',
      home: Scaffold(
        backgroundColor: _backgroundColor,
        body: ListView(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Text(
                  //   'UTI',
                  //   style: TextStyle(
                  //     fontSize: 22,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/uti.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    'Universitas Teknokrat Indonesia',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                transform: Matrix4.translationValues(0.0, -75.0, 0.0),
                child: Column(
                  children: [
                    Container(
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 25, left: 25, right: 25, bottom: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Login Account',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 35,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      TextField(
                                        controller: username,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 20),
                                          hintText: "Username",
                                          labelText: "Username",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
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
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Forgot Password",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 13),
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
                                      //   child: Text("Login"),
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
                                                color: Colors.white,
                                                fontSize: 15)),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          fixedSize: Size(double.infinity, 40),
                                          minimumSize:
                                              Size(double.infinity, 50),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
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
                          style: TextStyle(color: Colors.black38, fontSize: 13),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.blue, fontSize: 13),
                        )
                      ],
                    ),
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
