import 'package:booking_ticket_app/screens/ticket_view.dart';
import 'package:booking_ticket_app/utils/app_info_list.dart';
import 'package:booking_ticket_app/utils/app_layout.dart';
import 'package:booking_ticket_app/utils/app_styles.dart';
import 'package:booking_ticket_app/widgets/column_layout.dart';
import 'package:booking_ticket_app/widgets/layout_builder_widget.dart';
import 'package:booking_ticket_app/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const TicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getHeight(15),
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        ColumnLayout(
                          firstText: '5221 364869',
                          secondText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LayoutBuilderWidget(
                      section: 15,
                      width: 5,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: '364738 2824478',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        ColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LayoutBuilderWidget(
                      section: 15,
                      width: 5,
                      isColor: true,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                const Gap(4),
                                Text(
                                  '*** 2462',
                                  style: Styles.headLineStyle3,
                                ),
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        const ColumnLayout(
                          firstText: '\$2499.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(20),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(16)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            top: AppLayout.getHeight(295),
            left: AppLayout.getHeight(26),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2,)
              ),
              child: CircleAvatar(
                maxRadius: 3,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            top: AppLayout.getHeight(295),
            right: AppLayout.getHeight(26),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2,)
              ),
              child: CircleAvatar(
                maxRadius: 3,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
