import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  Color(0xFF37ECBA),
                  Color(0xFF71AFD2),
                ])),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w600,
              color: Color(0xFF37ECBA),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black12,
                  width: 1,
                )),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.fromLTRB(20,0,20,20),
            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black12,
                      width: 1,
                    )),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Forgot Password ?" , style: TextStyle(
                  color: Color(0xFF37ECBA),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                ElevatedButton(onPressed: () {},
                  style:
                  ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                      backgroundColor: const Color(0xFF37ECBA), foregroundColor: Colors.white),
                  child: const Text("Login" , style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,

                ),
                ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 130,
          ),
          Expanded(
            child: ElevatedButton(onPressed: () {},
              style:
              ElevatedButton.styleFrom(
                  fixedSize:  const Size(450, 50),
                  backgroundColor: const Color(0xFF37ECBA), foregroundColor: Colors.white),
              child: const Text("Sign Up" , style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,

              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
