import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/lg.png",
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0),
          Text(
            "Welcome to Login Page",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
          ),
          SizedBox(height: 20.0),

          // using of TextFeild and formfield
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter User Name", labelText: "User Name"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter User Password",
                    labelText: "User Password",
                  ),
                ),

                // use of button and elevated button.
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print("Loged in Successfully !");
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
