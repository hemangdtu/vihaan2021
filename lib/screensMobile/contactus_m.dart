import 'package:flutter/material.dart';
import 'package:vihaan_new/widgets/TeamCard.dart';


class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var contactUsTextStyle =
        TextStyle(fontSize: 16, fontWeight: FontWeight.w200, height: 1.3);
    return Container(
      padding: EdgeInsets.only(top: 32, bottom: 16),
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  constraints: BoxConstraints(maxHeight: 200),
                  child: Image.asset(
                    'images/IEEE_DTU_Logo.png',
                    color: Colors.white70,
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  constraints: BoxConstraints(maxHeight: 200),
                  child: Image.asset(
                    'images/WIE_Logo_Black.png',
                    color: Colors.white70,
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(
                                text: 'Ritwik Ranjan',
                                children: [
                                  // TextSpan(
                                  //   text: 'Ranjan',
                                  //   style: TextStyle(
                                  //       backgroundColor: Colors.white70,
                                  //       color: Colors.black87,
                                  //       fontWeight: FontWeight.w700,
                                  //       height: 1.8),
                                  // ),
                                  TextSpan(
                                    text: '\nLead Organizer, VIHAAN',
                                    style: contactUsTextStyle,
                                  ),
                                  TextSpan(
                                    text:
                                        '\nMembership & Webinar Coordinator, IEEE DTU',
                                    style: contactUsTextStyle,
                                  ),
                                  TextSpan(
                                    text: '\n+91 98733 88660',
                                    style: contactUsTextStyle,
                                  ),
                                  TextSpan(
                                    text: '\nritwikr@ieee.org',
                                    style: contactUsTextStyle,
                                  ),
                                ],
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'NunitoSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 50),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'This website has been',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                Column(
                  children: [
                    Text(
                      'developed with ',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '❤',
                        style: TextStyle(fontSize: 25, color: Colors.red),
                      ),
                    ),
                    Text(
                      ' by ',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context, 
                      builder: (context) {
                        return Dialog(
                          elevation: 16,
                          backgroundColor: Colors.transparent,
                          child: TeamCard()
                        );
                      }
                    );
                  },
                  child: Text(
                    'members of IEEE DTU',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      decoration: TextDecoration.underline,
                      decorationThickness: 0.7,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              '© 2021 IEEE DTU',
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
