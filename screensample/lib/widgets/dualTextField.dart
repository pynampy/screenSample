import 'package:flutter/material.dart';

class DualTextField extends StatelessWidget {

  final firstLabel;
  final secondLabel;

  DualTextField(this.firstLabel,this.secondLabel);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "  $firstLabel",
            style: TextStyle(color: Color(0xff949dff),
            fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.45,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
              height: MediaQuery.of(context).size.height * 0.035,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,
                  width: 0.5
                  ),
                  borderRadius: BorderRadius.circular(20)))
        ]),
        
         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "  $secondLabel",
            style: TextStyle(color: Color(0xff949dff),
            fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.45,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0
                  ),
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
              height: MediaQuery.of(context).size.height * 0.035,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)))
        ]) 
        
        
        ],
        
        )        
        );
  }
}