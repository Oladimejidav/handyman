import 'package:flutter/material.dart';
import 'package:services_app/auth/register.dart';
import 'package:services_app/auth/forgotpassword.dart';
import 'package:services_app/screen/homebody.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: size.height / 2.6,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/intersect.png",
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/images/logob.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(
                                205, 200, 214, 0.47999998927116394),
                            offset: Offset(0, 10),
                            blurRadius: 16)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  width: double.infinity,
                  child: const TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.email,
                          color: Colors.red,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(
                                205, 200, 214, 0.47999998927116394),
                            offset: Offset(0, 10),
                            blurRadius: 16)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  width: double.infinity,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        suffixIcon: Icon(
                          Icons.lock,
                          color: Colors.red,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const ForgotPassword();
                      },
                    ));
                  },
                  child: Column(children: const [
                    Text("Forgot Password?"),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 100)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(40.0)))),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const Home(),
                        ),
                        (route) => false,
                      );
                    },
                    child: const Text('Login')),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    'or Login from',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/facebook.png',
                      height: 150,
                      width: 150,
                    ),
                    Image.asset(
                      'assets/images/google.png',
                      height: 150,
                      width: 150,
                    ),
                    Image.asset(
                      'assets/images/apple.png',
                      height: 150,
                      width: 150,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Register();
                      },
                    ));
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "New around here? ",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        Text(
                          "Signup",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 150, 0, 1),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
