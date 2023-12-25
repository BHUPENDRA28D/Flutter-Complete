import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeBtn = false;

  //making a variable name
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/lg.png",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.0),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40.0),

              // using of TextField and form field
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter User Name",
                            labelText: "User Name"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter User Password",
                          labelText: "User Password",
                        ),
                      ),
                      SizedBox(height: 60.0),

                      InkWell(
                        // onTap: () => Navigator.pushNamed(context, "/homepage"),
                        onTap: () async {
                          setState(() {
                            changeBtn = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeBtn ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeBtn
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              // shape: changeBtn
                              //     ? BoxShape.circle
                              //     : BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(
                                  changeBtn ? 50.0 : 8.0)),
                        ),
                      ),

                      // use of button and elevated button.
                      // ElevatedButton(
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(
                      //     minimumSize: Size(150.0, 40.0),
                      //     // backgroundColor: Colors.purple[900]
                      //   ),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // ),
                    ],
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
