import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            "SIGN UP",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w600,
              color: Color(0xFF37ECBA),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),            child: TextFormField(
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
            padding: const EdgeInsets.symmetric(horizontal: 20),            child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Confirm Password",
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {},
                  style:
                  ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                      backgroundColor: const Color(0xFF37ECBA), foregroundColor: Colors.white),
                  child: const Text("Sign up" , style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,

                  ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
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
