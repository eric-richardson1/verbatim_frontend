import 'package:flutter/material.dart';
import 'package:verbatim_frontend/screens/signUp.dart';

import '../widgets/my_button_no_image.dart';

class SignupErrorMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3EE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'lib/images/Logo.png',
                      width: 150,
                      height: 120,
                    ),
                  ),
                ),

                const SizedBox(height: 230),
                Center(
                  child: Text(
                    'Oops, something went wrong!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE76F51),
                      fontSize: 32,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'We encountered an error during sign-up/login. Please double-check your email and username.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
                MyButtonNoImage(
                  buttonText: 'Try Again',
                  onTap: () {
                    // Navigate back to the 'SignUp' page
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

