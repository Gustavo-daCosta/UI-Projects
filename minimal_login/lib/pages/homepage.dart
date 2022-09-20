import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color.fromARGB(255, 222, 222, 222),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // android logo
              const Padding(
                padding: EdgeInsets.only(top: 160, bottom: 80),
                child: Icon(
                  Icons.android,
                  size: 120,
                ),
              ),
              
              // Hello message and subtitle
              const Text(
                "HELLO AGAIN!",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome back, you've been missed!",
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
    
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    // email input
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 236, 236, 236),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          fillColor: Color.fromARGB(255, 236, 236, 236),
                        ),
                      ),
                    ),
    
                    // password input
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 236, 236),
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: const InputDecoration(
                            hintText: "Password",
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            fillColor: Color.fromARGB(255, 236, 236, 236),
                          ),
                        ),
                      ),
                    ),
    
                    // Sign in button
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
    
                    // Register Button
                    TextButton(
                      onPressed: () {},
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Not a member? ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: " Register now",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
