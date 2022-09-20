import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: const Text("Login!"),
      ),
      body: const LoginUi(),
    );
  }
}

class LoginUi extends StatelessWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print("Upar vala $height");
    print("Upar vala $width");
    return ColoredBox(
      color: Colors.purple,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [ const Padding(
              padding: EdgeInsets.only(top : 75.0),
              child: Text("Please login"),
            ),
              Padding(
                padding: const EdgeInsets.only(top : 40.0),
                child: Container(
                  decoration: const BoxDecoration(
                     color: Color.fromARGB(255, 144, 202, 249),
                    borderRadius: BorderRadius.all(Radius.circular(35))
                  ),
                 
                  child: SizedBox(
                    height: height / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(30, 85 , 30, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: "USERNAME",
                            ),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "PASSWORD",
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: SizedBox(
                            height: height * 0.05,
                            width: width * 0.4,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade400,
                                shadowColor: Colors.black,
                                elevation: 10.0
                              ),
                              onPressed: () {
                                Fluttertoast.showToast(
                msg: "Logged you in!",  // message
                toastLength: Toast.LENGTH_SHORT, // length
                gravity: ToastGravity.BOTTOM,    // location
                                // duration
      );
                              },
                              child: const Text(
                                "Login",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}