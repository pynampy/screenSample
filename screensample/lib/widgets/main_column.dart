import 'package:flutter/material.dart';
import 'package:screensample/widgets/bottomNavigationBar.dart';
import 'package:screensample/widgets/dualTextField.dart';
import 'TextField.dart';

class MainColumn extends StatelessWidget {

 

  @override
  Widget build(BuildContext context) {
    var topMargin = MediaQuery.of(context).size.height*0.04;
    return Stack(
      fit: StackFit.loose,
          children:[Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
             
                                Container(
                    height: topMargin,
                
                ),

                Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)
                                  )
                                ),
                    height: MediaQuery.of(context).size.height*0.96,
            
            padding: EdgeInsets.only(
              top: topMargin
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your ",
                          style: TextStyle(
                              color: Color(0xff8f8f8f),
                              fontSize: MediaQuery.of(context).size.height * 0.03),
                        ),
                        Text(
                          "Profile ",
                          style: TextStyle(
                              color: Color(0xff949dff),
                              fontWeight: FontWeight.w500,
                              fontSize: MediaQuery.of(context).size.height * 0.03),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "The central hub for everything about you!",
                    style: TextStyle(
                        color: Color(0xffd4d4d4),
                        fontSize: MediaQuery.of(context).size.height * 0.015),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      color: Color(0xffd4d4d4),
                      height: 2,
                      width: MediaQuery.of(context).size.width * 0.48),
                  Padding(

                     padding: EdgeInsets.symmetric(horizontal: 20,
                     
                     vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Personal ",
                          style: TextStyle(
                              color: Color(0xff949dff),
                              fontWeight: FontWeight.w500,
                              fontSize: MediaQuery.of(context).size.height * 0.02),
                        ),
                        Text(
                          "Information ",
                          style: TextStyle(
                              color: Color(0xff8f8f8f),
                              fontSize: MediaQuery.of(context).size.height * 0.02),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                  FieldText("First Name"),
                  FieldText("Middle Name"),
                  FieldText("Last Name"),
                  DualTextField("Title", "Suffix"),
                  FieldText("Gender"),
                  DualTextField("Height", "Weight"),
                  FieldText("Date of Birth"),
                  DualTextField("Country", "Province"),
                  FieldText("City"),
                  FieldText("Home Address"),
                  FieldText("Phone Number"),
                  FieldText("Email Address"),
                  DualTextField("Occupation", "Employer Contract")
              ],
            ),
        ),
                ),
               
              ]     ),
          ),
            Positioned(
              top: MediaQuery.of(context).size.height*0.925,
              left: 0,
              right: 0,
              child: CustomBottomNavigationBar())
]     );
  }
}
