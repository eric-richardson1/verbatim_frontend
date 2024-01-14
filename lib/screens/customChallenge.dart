import 'package:flutter/material.dart';
import 'package:verbatim_frontend/BackendService.dart';
import 'package:verbatim_frontend/Components/shared_prefs.dart';
import 'sideBar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:verbatim_frontend/widgets/create_group_app_bar.dart';
import 'package:verbatim_frontend/widgets/size.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:verbatim_frontend/widgets/custom_app_bar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

class customChallenge extends StatefulWidget {
  final String groupName;

  customChallenge({
    Key? key,
    required this.groupName,
  }) : super(key: key);

  @override
  _CustomChallengeState createState() => _CustomChallengeState();
}

class _CustomChallengeState extends State<customChallenge>
    with SingleTickerProviderStateMixin {
  List<bool> expandedStates = [false, false, false, false, false];
  List<String> prompts = [];

  Widget build(BuildContext context) {
    final String assetName = 'assets/img1.svg'; // orange (top) background

    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 243, 238),
            body: SingleChildScrollView(
                child: Container(
                    color: Color.fromARGB(255, 255, 243, 238),
                    child: Column(children: [
                      SizedBox(
                          width: double.maxFinite,
                          child: Column(children: [
                            SizedBox(
                                height: 280.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      // orange background
                                      Container(
                                        height: 220.v,
                                        width: double.maxFinite,
                                        margin: EdgeInsets.zero,
                                        padding: EdgeInsets.zero,
                                        child: SvgPicture.asset(
                                          assetName,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      CustomAppBar(),
                                      Container(
                                          margin: EdgeInsets.only(top: 100.v),
                                          child: Column(children: [
                                            Text(
                                              'Custom Challenge',
                                              style: TextStyle(
                                                fontSize: 27,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                            SizedBox(height: 10.v),
                                          ]))
                                    ])),
                            SizedBox(height: 20),
                            // List of 5 rectangles
                            for (int i = 0; i < expandedStates.length; i++)
                              _buildEditableRectangle(i),
                            SizedBox(height: 20),
                            // Add Prompt button
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  prompts.add('New Prompt');
                                });
                                print('Add Prompt button pressed');
                              },
                              child: Text('Add Prompt'),
                            ),
                          ]))
                    ])))));
  }

  Widget _buildEditableRectangle(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          expandedStates[index] = !expandedStates[index];
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: expandedStates[index] ? 120 : 60,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Editable Text ${index + 1}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
