import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({super.key, required this.title, this.content});
  final String title;
  final String? content;
  @override
  Widget build(BuildContext context) {
    return content != null ?
      Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kItemColor
      ),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
        ),
        collapsedIconColor: kPrimaryColor,
        iconColor: Colors.red,
        collapsedTextColor: Colors.white,
        textColor: kPrimaryColor,
        collapsedBackgroundColor: const Color(0xFF1C1B20),
        backgroundColor: const Color(0xFF1C1B20),
        tilePadding: const EdgeInsets.only(left: 0.0),
        title: Text('\t $title',
          style: const TextStyle(
              fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            constraints: const BoxConstraints(
              maxHeight: 120
            ),
            //height: 120,
            padding: const EdgeInsets.only(bottom:12,right: 12.0,left: 12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kItemColor
            ),
            child: Text(content!,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          const SizedBox(height: 5,)
        ],
        onExpansionChanged: (bool expanded) {},
      ),
    ) : const SizedBox();
  }
}