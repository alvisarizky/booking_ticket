import 'package:booking_ticket_app/utils/app_layout.dart';
import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xffF4F6FD),
        ),
        child: Row(
          children: [
            Container(
              width: _size.width * .44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  firstTab,
                ),
              ),
            ),
            Container(
              width: _size.width * .44,
              padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(7),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppLayout.getHeight(50)),
                ),
                color: Colors.grey.shade200,
              ),
              child: Center(
                child: Text(
                  secondTab,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
