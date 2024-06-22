import 'package:flutter/material.dart';
import 'package:smart_farm/constants.dart';
import 'package:smart_farm/core/utils/styles_app.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({super.key, required this.title, this.content});
  final String title;
  final String? content;
  @override
  Widget build(BuildContext context) {
    return content != null ?
      Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.03),
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
        collapsedBackgroundColor: kItemColor,
        backgroundColor: kItemColor,
        tilePadding: const EdgeInsets.only(left: 0.0),
        title: Text('\t $title',
          style: StylesApp.styleBold16(context).copyWith(
            color: Colors.white
          )
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
              style: StylesApp.styleRegular14(context)
            ),
          ),
          const SizedBox(height: 5,)
        ],
        onExpansionChanged: (bool expanded) {},
      ),
    ) : const SizedBox();
  }
}