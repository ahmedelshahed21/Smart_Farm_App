import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({super.key, required this.content,});
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black
      ),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
        ),
        collapsedIconColor: kPrimaryColor,
        iconColor: Colors.red,
        collapsedTextColor: Colors.white,
        textColor: kPrimaryColor,
        collapsedBackgroundColor: Colors.black.withOpacity(0.4),
        backgroundColor: Colors.black.withOpacity(0.4),
        tilePadding: const EdgeInsets.only(left: 0.0),
        title: const Text('OverView',
          style: TextStyle(
              fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.only(bottom:12,right: 12.0,left: 12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black.withOpacity(0.4)
            ),
            child: Text(content,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
        ],
        onExpansionChanged: (bool expanded) {},
      ),
    );
  }
}