import 'package:flutter/material.dart';
import 'package:verbatim_frontend/screens/getStarted.dart';
import 'package:verbatim_frontend/screens/signUp.dart';
import 'package:verbatim_frontend/Components/shared_prefs.dart';
import 'globalChallenge.dart';
import 'logIn.dart';

class OnBoardingPage4 extends StatelessWidget {
  const OnBoardingPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3EE),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),  //Color(0xFFFFF3EE)
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/onboardingPage4Image.png', // Replace with the path to your image asset
                            width: 454, // Set the width and height to your preference
                            height: 354,
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),
                      Center(
                        child: Text(
                          'Custom \nChallenges',
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

                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Want to keep your inside jokes inside? Create custom challenges to share with your chosen friends in private channels.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Mulish',
                              // fontWeight: FontWeight.w700,
                              height: 1.5,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the 'Sign Up' page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => globalChallenge(
                            username: SharedPrefs().getUserName() ?? ''
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFF3EE), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0), // Rectangular shape
                      ),
                    ),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the 'Sign Up' page
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => globalChallenge(
                          username: SharedPrefs().getUserName() ?? ''
                        ),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFE76F51), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0), // Rectangular shape
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
