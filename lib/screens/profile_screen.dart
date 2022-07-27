import 'package:booking_ticket_app/utils/app_layout.dart';
import 'package:booking_ticket_app/utils/app_styles.dart';
import 'package:booking_ticket_app/widgets/column_layout.dart';
import 'package:booking_ticket_app/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/img_1.png',
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  const Gap(2),
                  Text(
                    'New-York',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                      fontSize: 14,
                    ),
                  ),
                  const Gap(8),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: Color(0xffFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white, size: 15),
                        ),
                        Text(
                          'Premium status',
                          style: TextStyle(
                            color: Color(0xff526799),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  print('Your\'re Tapped');
                },
                child: Text(
                  'Edit',
                  style: Styles.textStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Styles.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: Color(0xff264cd2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(25),
                  vertical: AppLayout.getHeight(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new award',
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'You have 150 flights in a year',
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  '192802',
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accured',
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '27 July 2022',
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(8)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: '23 042',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    ColumnLayout(
                      firstText: 'Airline CO',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                LayoutBuilderWidget(
                  section: 15,
                  width: 7,
                  isColor: true,
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: '24',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    ColumnLayout(
                      firstText: 'McDonal\'s',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                LayoutBuilderWidget(
                  section: 15,
                  width: 7,
                  isColor: true,
                ),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: '52 340',
                      secondText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    ColumnLayout(
                      firstText: 'Exuma',
                      secondText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: () => print('You\'re Tapped'),
            child: Center(
              child: Text(
                'How to get more miles',
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
