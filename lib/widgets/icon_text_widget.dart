import 'package:booking_ticket_app/utils/app_layout.dart';
import 'package:booking_ticket_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const IconTextWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getWidth(12),
        horizontal: AppLayout.getWidth(12),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xffBFC2DF),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            title,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
