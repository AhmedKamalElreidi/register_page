import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isVisable = true;

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
                children: [
                  const Text("Create Your account"),
                  Image.asset(
                    "assets/70.jpg",
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
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
                      const Text("Syndicate ID No:"),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.grey)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.grey))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Email"),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            label: const Text('Email'),
                            prefixIcon: const Icon(Icons.email_rounded),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.blue)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.blue))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Password"),
                      TextFormField(
                        obscureText: isVisable,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            label: const Text('Password'),
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisable = !isVisable;
                                  });
                                },
                                icon: Icon((isVisable)
                                    ? Icons.remove_red_eye
                                    : Icons.visibility_off_rounded)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.blue)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.blue))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Forget Password?"),
                      ),
                      Center(
                        child: GestureDetector(
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
                      ),
                      const Center(
                        child: Text(
                          "Or",
                          style: TextStyle(),
                        ),
                      ),
                      Center(
                        child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 120,
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xff791BE5)),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Center(child: Text('You are not a member yet?')),
                      Center(
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
                              ));
                            },
                            child: const Text(
                              'Visit as a Guest',
                              style: TextStyle(color: Color(0xff791BE5)),
                            )),
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
