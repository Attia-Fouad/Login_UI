import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/login_screen.dart';
import 'dart:ui';

import 'components/components.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var width = double.infinity;

  @override
  Widget build(BuildContext context) {
    var myColor = HexColor("#A1331A");
    var mailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      body:Stack(
        children: [
          Container(color: myColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18,),
            child: ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18,),
                      child: Center(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
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
                                    onPressed: () {
                                      navigateAndFinish(context, const LoginScreen());
                                    },
                                    child: const Text(
                                      'Sign in',
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
                                Align(
                                  alignment: AlignmentDirectional.bottomStart,
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(width: 1,color: myColor,),
                                    ),
                                    child: Icon(Icons.person_add_alt_1,
                                        color: myColor),
                                  ),

                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),


          // CustomPaint(
          //   child: Container(
          //     color: Colors.white,
          //   ),
          //   size: Size(w,h), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          //   painter: RPSCustomPainter(),
          // ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.7865440);
    path0.quadraticBezierTo(size.width * 0.0025000, size.height * 0.9087609,
        size.width * 0.2500000, size.height * 0.9075508);
    path0.cubicTo(
        size.width * 0.3750000,
        size.height * 0.9075508,
        size.width * 0.6250000,
        size.height * 0.9075508,
        size.width * 0.7566667,
        size.height * 0.9075508);
    path0.quadraticBezierTo(size.width * 0.9901500, size.height * 0.9084584,
        size.width * 0.9705667, size.height * 0.9983180);
    path0.lineTo(size.width * 0.9966667, size.height * 0.9983059);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.7865440);
    path0.quadraticBezierTo(size.width * 0.0025000, size.height * 0.9087609,
        size.width * 0.2500000, size.height * 0.9075508);
    path0.cubicTo(
        size.width * 0.3750000,
        size.height * 0.9075508,
        size.width * 0.6250000,
        size.height * 0.9075508,
        size.width * 0.7566667,
        size.height * 0.9075508);
    path0.quadraticBezierTo(size.width * 0.9901500, size.height * 0.9084584,
        size.width * 0.9705667, size.height * 0.9983180);
    path0.lineTo(size.width * 0.9966667, size.height * 0.9983059);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path path1 = Path();

    canvas.drawPath(path1, paint1);

    Paint paint2 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path path2 = Path();

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
