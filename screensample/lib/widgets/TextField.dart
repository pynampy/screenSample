import 'package:flutter/material.dart';

class FieldText extends StatelessWidget {

  final labelText;
  FieldText(this.labelText);  
  @override
  Widget build(BuildContext context) {
    return Container(
      
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "  $labelText",
            style: TextStyle(color: Color(0xff949dff),
            fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            
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
        ]));
  }
}
