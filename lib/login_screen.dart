import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'components/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var myColor = HexColor("#A1331A");
  var mailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Container(
            decoration: BoxDecoration(
              color: myColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, bottom: 30.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0),
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(width: 250, child: Image.asset('assets/logo.jpg')),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: designedFormField(
                        validator: (value) {},
                        controller: mailController,
                        type: TextInputType.emailAddress,
                        label: 'Email',
                        prefixIcon: Icons.email,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: designedFormField(
                        validator: (value) {},
                        controller: passwordController,
                        type: TextInputType.visiblePassword,
                        label: 'Password',
                        prefixIcon: Icons.lock_outline,
                        suffixIcon: Icons.remove_red_eye_outlined,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                          color: HexColor('#d86a62'),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: myColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
