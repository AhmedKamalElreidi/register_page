import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff791BE5),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Create Your \naccount",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                    softWrap: true,
                  ),
                  Image.asset(
                    "assets/70.jpg",
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Syndicate ID No:",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 4.0,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(25),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Email",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 4.0,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(25),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Password",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        elevation: 4.0,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(25),
                        child: TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Forget Password?",
                            style: TextStyle(fontSize: 17)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xff791BE5)),
                                  child: const Text(
                                    'SignUp',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Or",
                              style: TextStyle(),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 120,
                                  alignment: Alignment.center,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xff18AFBA)),
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('You are not a member yet?'),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Visit as a Guest',
                                  style: TextStyle(color: Color(0xff791BE5)),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
