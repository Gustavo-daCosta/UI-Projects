import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 170, bottom: 55),
                child: Icon(
                  Icons.school,
                  size: 140,
                  color: Colors.white,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                      "TAUGHT WITH ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        letterSpacing: 4,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                ],
              ),
              const SizedBox(height: 35),
              const InputForm(
                hintText: "Email",
                inputType: TextInputType.emailAddress,
              ),
              const InputForm(
                hintText: "Password",
                inputType: TextInputType.visiblePassword,
                isObscure: true,
              ),

              // Forgot password button
              Container(
                height: 35,
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Sign In button
              Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 83, 46, 156)),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              // Register now text
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Not a member? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      WidgetSpan(
                        child: InkWell(
                          child: const Text(
                            "Register now",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white54,
                              fontSize: 15,
                            ),
                          ),
                          onTap: () {},
                        )
                      )
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

class InputForm extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final bool isObscure;

  const InputForm({
    Key? key,
    required this.hintText,
    required this.inputType,
    this.isObscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white38),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          keyboardType: inputType,
          obscureText: isObscure,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white),
            hoverColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
