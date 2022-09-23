import 'package:flutter/material.dart';
import 'package:services_app/auth/homepage.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/images/logow.png"),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Center(
                  child: Text(
                    'Forgot \n Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 40,
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
                  height: 40,
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
                    onPressed: () {},
                    child: const Text('Retrive')),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Homepage();
                      },
                    ));
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Already have account? ",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 150, 0, 1),
                          ),
                        ),
                        SizedBox(
                          height: 100,
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
